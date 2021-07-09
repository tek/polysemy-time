module Polysemy.Time.Test.MeasureTest where

import Polysemy.Test (UnitTest, assert, runTestAuto)

import qualified Polysemy.Time.Data.Time as Time
import Polysemy.Time.Data.TimeUnit (MilliSeconds (MilliSeconds), convert)
import Polysemy.Time.Ghc (interpretTimeGhc)
import Polysemy.Time.Measure (measure)

test_measure :: UnitTest
test_measure =
  runTestAuto do
    interpretTimeGhc do
      (t1, t2) <- measure do
        Time.sleep (MilliSeconds 100)
        fst <$> measure (Time.sleep (MilliSeconds 100))
      assert (t2 > convert (MilliSeconds 100))
      assert (t1 > convert (MilliSeconds 200))
      assert (t2 < t1)
      assert (t2 < convert (MilliSeconds 200))

