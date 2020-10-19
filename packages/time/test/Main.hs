module Main where

import Polysemy.Test (unitTest)
import Polysemy.Time.GhcTimeTest (test_ghcTime, test_ghcTimeAt)
import Polysemy.Time.TimeUnitTest (test_fractional)
import Test.Tasty (TestTree, defaultMain, testGroup)

tests :: TestTree
tests =
  testGroup "unit" [
    unitTest "ghc time" test_ghcTime,
    unitTest "ghc time at instant" test_ghcTimeAt,
    unitTest "convert Fractional to TimeUnit" test_fractional
  ]

main :: IO ()
main =
  defaultMain tests
