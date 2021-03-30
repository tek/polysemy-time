module Polysemy.Time.Class.Instant where

import Data.Time (Day, UTCTime(UTCTime))

class Instant i dt | i -> dt where
  dateTime :: i -> dt

instance Instant UTCTime UTCTime where
  dateTime =
    id

instance Instant Day UTCTime where
  dateTime day =
    UTCTime day 0
