module Main where

import Polysemy.Test (unitTest)
import Polysemy.Time.Test.GhcTimeTest (test_ghcTime)
import Polysemy.Time.Test.MeasureTest (test_measure)
import Polysemy.Time.Test.TimeUnitTest (test_fractional)
import Test.Tasty (TestTree, defaultMain, testGroup)

tests :: TestTree
tests =
  testGroup "unit" [
    test_ghcTime,
    unitTest "convert Fractional to TimeUnit" test_fractional,
    unitTest "measure time an action takes" test_measure
  ]

main :: IO ()
main =
  defaultMain tests
