module Polysemy.Time.Test.GhcTimeTest where

import Data.Time (Day, UTCTime)
import Polysemy.Test (UnitTest, assert, runTestAuto, (===))
import Polysemy.Test.Data.Hedgehog (Hedgehog)

import Polysemy.Time.Calendar (mkDatetime, year)
import qualified Polysemy.Time.Data.Time as Time
import Polysemy.Time.Data.Time (Time)
import Polysemy.Time.Data.TimeUnit (Days (Days), Seconds (Seconds))
import Polysemy.Time.Ghc (interpretTimeGhc, interpretTimeGhcAt)

prog ::
  Ord t =>
  Members [Time t d, Hedgehog IO] r =>
  Sem r ()
prog = do
  time1 <- Time.now
  time2 <- Time.now
  assert (time1 < time2)

test_ghcTime :: UnitTest
test_ghcTime =
  runTestAuto do
    interpretTimeGhc prog

testTime :: UTCTime
testTime =
  mkDatetime 1845 12 31 23 59 59

test_ghcTimeAt :: UnitTest
test_ghcTimeAt =
  runTestAuto do
    interpretTimeGhcAt testTime do
      Time.sleep @UTCTime @Day (Seconds 1)
      time <- Time.now
      1846 === year time
      Time.adjust (Days 366)
      time1 <- Time.now
      1847 === year time1
