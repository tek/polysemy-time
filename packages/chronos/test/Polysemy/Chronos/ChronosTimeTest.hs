module Polysemy.Chronos.ChronosTimeTest where

import qualified Chronos as Chronos

import Polysemy.Chronos (interpretTimeChronos)
import Polysemy.Chronos.Time (interpretTimeChronosAt)
import Polysemy.Test (UnitTest, assert, runTestAuto, (===))
import Polysemy.Time.Calendar (year)
import qualified Polysemy.Time.Data.Time as Time
import Polysemy.Time.Data.TimeUnit (Seconds(Seconds))

test_chronosTime :: UnitTest
test_chronosTime =
  runTestAuto do
    interpretTimeChronos do
      time1 <- Time.now
      time2 <- Time.now
      assert (time1 < time2)

testDatetime :: Chronos.Datetime
testDatetime =
  Chronos.datetimeFromYmdhms 1845 12 31 23 59 59

testTime :: Chronos.Time
testTime =
  Chronos.datetimeToTime testDatetime

test_chronosTimeAt :: UnitTest
test_chronosTimeAt =
  runTestAuto do
    interpretTimeChronosAt testTime do
      Time.sleep (Seconds 2)
      time <- Time.now
      1846 === year time
