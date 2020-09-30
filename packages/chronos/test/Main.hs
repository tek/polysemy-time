module Main where

import Polysemy.Test (unitTest)
import Test.Tasty (TestTree, defaultMain, testGroup)

import Polysemy.Chronos.ChronosTimeTest (test_chronosTime, test_chronosTimeAt)

tests :: TestTree
tests =
  testGroup "unit" [
    unitTest "chronos time" test_chronosTime,
    unitTest "chronos time at specified instant" test_chronosTimeAt
  ]

main :: IO ()
main =
  defaultMain tests
