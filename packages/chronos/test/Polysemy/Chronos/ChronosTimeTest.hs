module Polysemy.Chronos.ChronosTimeTest where

import qualified Chronos
import Polysemy.Test (UnitTest, assert, assertEq, runTestAuto)
import Polysemy.Time.Calendar (year)
import Polysemy.Time.Data.TimeUnit (Seconds (Seconds))
import qualified Polysemy.Time.Effect.Time as Time

import Polysemy.Chronos (interpretTimeChronos)
import Polysemy.Chronos.Interpreter.Time (interpretTimeChronosAt)

test_chronosTime :: UnitTest
test_chronosTime =
  runTestAuto do
    interpretTimeChronos do
      time1 <- Time.now @Chronos.Time @Chronos.Date
      time2 <- Time.now @Chronos.Time @Chronos.Date
      assert @IO (time1 < time2)

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
      Time.sleep @Chronos.Time @Chronos.Date (Seconds 2)
      time <- Time.now @Chronos.Time @Chronos.Date
      assertEq @_ @IO 1846 (year time)
