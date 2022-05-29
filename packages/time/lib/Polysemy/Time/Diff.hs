-- |Diff Combinator, Internal
module Polysemy.Time.Diff where

import Torsor (Torsor, difference)

import Polysemy.Time.Class.Instant (Instant, dateTime)
import Polysemy.Time.Data.TimeUnit (TimeUnit, convert)
import Polysemy.Time.Effect.Time (Time)
import qualified Polysemy.Time.Effect.Time as Time

-- |Subtract two arbitrary values that can be converted to an 'Instant'.
diff ::
  ∀ dt u i1 i2 diff .
  TimeUnit diff =>
  TimeUnit u =>
  Torsor dt diff =>
  Instant i1 dt =>
  Instant i2 dt =>
  i1 ->
  i2 ->
  u
diff i1 i2 =
  convert (difference (dateTime i1) (dateTime i2))

-- |Calculate the duration between the given 'Instant' and the current time.
since ::
  ∀ u t d dt diff r .
  TimeUnit diff =>
  TimeUnit u =>
  Instant t dt =>
  Torsor dt diff =>
  Member (Time t d) r =>
  t ->
  Sem r u
since time = do
  now <- Time.now @t @d
  pure (diff @dt now time)
