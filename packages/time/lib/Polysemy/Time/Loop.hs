module Polysemy.Time.Loop where

import Polysemy.Time.Data.Time (Time)
import Polysemy.Time.Data.TimeUnit (TimeUnit)
import qualified Polysemy.Time.Data.Time as Time

-- |Repeatedly run the @action@, sleeping for @interval@ between executions.
-- Stops when @action@ returns @False@.
while ::
  ∀ t d u r .
  Member (Time t d) r =>
  TimeUnit u =>
  u ->
  Sem r Bool ->
  Sem r ()
while interval action =
  spin
  where
    spin =
      whenM action (Time.sleep @t @d interval *> spin)

-- |Repeatedly run the @action@, sleeping for @interval@ between executions.
loop ::
  ∀ t d u r .
  Member (Time t d) r =>
  TimeUnit u =>
  u ->
  Sem r () ->
  Sem r ()
loop interval action =
  forever (action *> Time.sleep @t @d interval)
