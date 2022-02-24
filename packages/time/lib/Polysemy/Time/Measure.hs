-- |Measure an Action's Duration, Internal
module Polysemy.Time.Measure where

import Torsor (Torsor)

import Polysemy.Time.Class.Instant (Instant)
import Polysemy.Time.Data.TimeUnit (TimeUnit)
import Polysemy.Time.Diff (diff)
import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Effect.Time (Time)

-- |Run the action @ma@ and measure the time it takes.
--
-- The type of the difference depends on the functional dependencies of the classes 'Instant' and 'Torsor', where the
-- input to the former is taken from the type @t@ of 'Time' which is instantiated by an interpreter.
measure ::
  ∀ dt t d u r a .
  TimeUnit u =>
  Torsor dt u =>
  Instant t dt =>
  Member (Time t d) r =>
  Sem r a ->
  Sem r (u, a)
measure ma = do
  !start <- Time.now @t @d
  a <- ma
  !end <- Time.now @t @d
  pure (diff end start, a)
{-# inline measure #-}
