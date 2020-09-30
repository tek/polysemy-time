module Main where

import Polysemy.Test (unitTest)
import Polysemy.Time.GhcTimeTest (test_ghcTime, test_ghcTimeAt)
import Test.Tasty (TestTree, defaultMain, testGroup)

tests :: TestTree
tests =
  testGroup "unit" [
    unitTest "ghc time" test_ghcTime,
    unitTest "ghc time at instant" test_ghcTimeAt
  ]

main :: IO ()
main =
  defaultMain tests
