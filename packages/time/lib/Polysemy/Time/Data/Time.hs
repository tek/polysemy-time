module Polysemy.Time.Data.Time where

import Polysemy.Time.Data.TimeUnit (TimeUnit)

data Time (time :: *) (date :: *) :: Effect where
  Now :: Time t d m t
  Today :: Time t d m d
  Sleep :: TimeUnit u => u -> Time t d m ()
  SetTime :: t -> Time t d m ()
  SetDate :: d -> Time t d m ()

makeSem ''Time
