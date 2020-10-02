{-# OPTIONS_GHC -fno-warn-orphans #-}

module Polysemy.Time.Orphans where

import Data.Time (diffUTCTime, addUTCTime, NominalDiffTime, UTCTime)
import Torsor (Additive(..), Torsor(..))

instance Additive NominalDiffTime where
  zero =
    0
  invert =
    toEnum . negate . fromEnum
  plus =
    (+)
  minus =
    (-)

instance Torsor UTCTime NominalDiffTime where
  add v p =
    addUTCTime v p
  difference =
    diffUTCTime
