module Polysemy.Time.Test.GhcTimeTest where

import Data.Time (Day, UTCTime)
import Polysemy.Test (UnitTest, assert, assertEq, assertJust, runTestAuto, unitTest)
import Polysemy.Test.Data.Hedgehog (Hedgehog)
import Test.Tasty (testGroup)
import Test.Tasty.Providers (TestTree)

import Polysemy.Time.At (interceptTimeConstant)
import Polysemy.Time.Calendar (mkDatetime, year)
import Polysemy.Time.Data.TimeUnit (Days (Days), Hours (Hours), Seconds (Seconds))
import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Effect.Time (Time)
import Polysemy.Time.Interpreter.Ghc (GhcTime, interpretTimeGhc, interpretTimeGhcAt)

prog ::
  ∀ t d r .
  Ord t =>
  Members [Time t d, Hedgehog IO] r =>
  Sem r ()
prog = do
  time1 <- Time.now @t @d
  time2 <- Time.now @t @d
  assert @IO (time1 < time2)

test_ghcTimeNow :: UnitTest
test_ghcTimeNow =
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

interceptSignal ::
  Members [GhcTime, Embed IO] r =>
  MVar () ->
  Sem r a ->
  Sem r a
interceptSignal signal =
  intercept @GhcTime \case
    Time.Sleep t -> do
      embed (putMVar signal ())
      Time.sleep @UTCTime @Day t
    e ->
      send @GhcTime (coerce e)

test_ghcTimeConstant :: UnitTest
test_ghcTimeConstant =
  runTestAuto $ asyncToIOFinal $ interpretTimeGhc do
    signal <- embed newEmptyMVar
    interceptSignal signal $ interceptTimeConstant testTime do
      handle <- async do
        Time.sleep @UTCTime @Day (Hours 1)
      embed (takeMVar signal)
      Time.adjust @UTCTime @Day (Hours 1)
      assertJust @_ @IO () =<< await handle

test_ghcTime :: TestTree
test_ghcTime =
  testGroup "ghc time" [
    unitTest "now monotony" test_ghcTimeNow,
    unitTest "start at instant" test_ghcTimeAt,
    unitTest "constant at instant" test_ghcTimeConstant
  ]
