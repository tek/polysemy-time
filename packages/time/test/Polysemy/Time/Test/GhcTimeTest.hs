module Polysemy.Time.Test.GhcTimeTest where

import Data.Time (Day, UTCTime)
import Polysemy.Test (UnitTest, assert, assertEq, runTestAuto)
import Polysemy.Test.Data.Hedgehog (Hedgehog)

import Polysemy.Time.Calendar (mkDatetime, year)
import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Effect.Time (Time)
import Polysemy.Time.Data.TimeUnit (Days (Days), Seconds (Seconds))
import Polysemy.Time.Interpreter.Ghc (interpretTimeGhc, interpretTimeGhcAt)

prog ::
  ∀ t d r .
  Ord t =>
  Members [Time t d, Hedgehog IO] r =>
  Sem r ()
prog = do
  time1 <- Time.now @t @d
  time2 <- Time.now @t @d
  assert @IO (time1 < time2)

test_ghcTime :: UnitTest
test_ghcTime =
  runTestAuto do
    interpretTimeGhc (prog @UTCTime @Day)

testTime :: UTCTime
testTime =
  mkDatetime 1845 12 31 23 59 59

test_ghcTimeAt :: UnitTest
test_ghcTimeAt =
  runTestAuto do
    interpretTimeGhcAt testTime do
      Time.sleep @UTCTime @Day (Seconds 1)
      time <- Time.now @UTCTime @Day
      assertEq @_ @IO 1846 (year time)
      Time.adjust @UTCTime @Day (Days 366)
      time1 <- Time.now @UTCTime @Day
      assertEq @_ @IO 1847 (year time1)
