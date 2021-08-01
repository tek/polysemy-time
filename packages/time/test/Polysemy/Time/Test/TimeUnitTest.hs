module Polysemy.Time.Test.TimeUnitTest where

import Polysemy.Test (UnitTest, assertEq, runTestAuto)

import Polysemy.Time.Data.TimeUnit (MicroSeconds (MicroSeconds), MilliSeconds (MilliSeconds))

test_fractional :: UnitTest
test_fractional =
  runTestAuto do
    assertEq @_ @IO (MilliSeconds 50) 0.05
    assertEq @_ @IO (MicroSeconds 200) 0.0002
    assertEq @_ @IO (MilliSeconds 50) (MilliSeconds 100 / MilliSeconds 2)
