-- |Combinators for looping with a sleep interval, Internal
module Polysemy.Time.Loop where

import Polysemy.Time.Data.TimeUnit (TimeUnit)
import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Effect.Time (Time)

-- |Repeatedly run the @action@, sleeping for @interval@ between executions.
-- Stops when @action@ returns @Just a@, returning the contained @a@.
untilJust ::
  ∀ t d u r a .
  Member (Time t d) r =>
  TimeUnit u =>
  u ->
  Sem r (Maybe a) ->
  Sem r a
untilJust interval action =
  spin
  where
    spin =
      action >>= \case
        Just a -> pure a
        Nothing -> Time.sleep @t @d interval *> spin

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
-- The result of @action@ is passed back to it for the next run, starting with @initial@.
loop ::
  ∀ t d u a r .
  Member (Time t d) r =>
  TimeUnit u =>
  u ->
  a ->
  (a -> Sem r a) ->
  Sem r ()
loop interval initial action =
  forever (spin initial)
  where
    spin a = do
      new <- action a
      Time.sleep @t @d interval
      spin new

-- |Repeatedly run the @action@, sleeping for @interval@ between executions.
loop_ ::
  ∀ t d u r .
  Member (Time t d) r =>
  TimeUnit u =>
  u ->
  Sem r () ->
  Sem r ()
loop_ interval action =
  forever (action *> Time.sleep @t @d interval)
