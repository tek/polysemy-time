module Polysemy.Time.Data.Time where

import Polysemy.Time.Data.TimeUnit (TimeUnit)

-- |The Time effect.
data Time (time :: *) (date :: *) :: Effect where
  -- |Produce the current time, possibly relative to what was set with 'SetTime' or 'SetDate'
  Now :: Time t d m t
  -- |Produce the current date, possibly relative to what was set with 'SetTime' or 'SetDate'
  Today :: Time t d m d
  -- |Suspend the current computation for the specified time span.
  Sleep :: TimeUnit u => u -> Time t d m ()
  -- |Set the current time, if the interpreter supports it.
  SetTime :: t -> Time t d m ()
  -- |Set the current date, if the interpreter supports it.
  SetDate :: d -> Time t d m ()

makeSem ''Time
