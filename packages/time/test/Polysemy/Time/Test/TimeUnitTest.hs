module Polysemy.Time.Test.TimeUnitTest where

import Polysemy.Test (UnitTest, runTestAuto, (===))

import Polysemy.Time.Data.TimeUnit (MicroSeconds (MicroSeconds), MilliSeconds (MilliSeconds))

test_fractional :: UnitTest
test_fractional =
  runTestAuto do
    MilliSeconds 50 === 0.05
    MicroSeconds 200 === 0.0002
    MilliSeconds 50 === (MilliSeconds 100 / MilliSeconds 2)
