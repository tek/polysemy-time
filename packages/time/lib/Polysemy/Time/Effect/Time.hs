{-# options_haddock prune #-}

-- |Time effect, Internal
module Polysemy.Time.Effect.Time where

import Polysemy.Time.Data.TimeUnit (AddTimeUnit, TimeUnit)

-- |The Time effect.
data Time (time :: Type) (date :: Type) :: Effect where
  -- |Produce the current time, possibly relative to what was set with 'SetTime' or 'SetDate'
  Now :: Time t d m t
  -- |Produce the current date, possibly relative to what was set with 'SetTime' or 'SetDate'
  Today :: Time t d m d
  -- |Suspend the current computation for the specified time span.
  Sleep :: TimeUnit u => u -> Time t d m ()
  -- |Set the current time, if the interpreter supports it.
  SetTime :: t -> Time t d m ()
  -- |Adjust the current time relatively, if the interpreter supports it.
  Adjust :: TimeUnit u1 => u1 -> Time t d m ()
  -- |Set the current date, if the interpreter supports it.
  SetDate :: d -> Time t d m ()

makeSem_ ''Time

-- |Produce the current time, possibly relative to what was set with 'SetTime' or 'SetDate'
now ::
  ∀ t d r .
  Member (Time t d) r =>
  Sem r t

-- |Produce the current date, possibly relative to what was set with 'SetTime' or 'SetDate'
today ::
  ∀ t d r .
  Member (Time t d) r =>
  Sem r d

-- |Suspend the current computation for the specified time span.
sleep ::
  ∀ t d u r .
  TimeUnit u =>
  Member (Time t d) r =>
  u ->
  Sem r ()

-- |Set the current time, if the interpreter supports it.
setTime ::
  ∀ t d r .
  Member (Time t d) r =>
  t ->
  Sem r ()

-- |Adjust the current time relatively, if the interpreter supports it.
adjust ::
  ∀ t d u1 u2 r .
  AddTimeUnit t u1 u2 =>
  Member (Time t d) r =>
  u1 ->
  Sem r ()

-- |Set the current date, if the interpreter supports it.
setDate ::
  ∀ t d r .
  Member (Time t d) r =>
  d ->
  Sem r ()
