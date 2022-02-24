module Polysemy.Time.Test.MeasureTest where

import Data.Time (Day, UTCTime)
import Polysemy.Test (UnitTest, assert, runTestAuto)

import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Data.TimeUnit (MilliSeconds (MilliSeconds), convert)
import Polysemy.Time.Interpreter.Ghc (interpretTimeGhc)
import Polysemy.Time.Measure (measure)

test_measure :: UnitTest
test_measure =
  runTestAuto do
    interpretTimeGhc do
      (t1, t2) <- measure @_ @UTCTime @Day do
        Time.sleep @UTCTime @Day (MilliSeconds 100)
        fst <$> measure @_ @UTCTime @Day (Time.sleep @UTCTime @Day (MilliSeconds 100))
      assert @IO (t2 > convert (MilliSeconds 100))
      assert @IO (t1 > convert (MilliSeconds 200))
      assert @IO (t2 < t1)
      assert @IO (t2 < convert (MilliSeconds 200))

