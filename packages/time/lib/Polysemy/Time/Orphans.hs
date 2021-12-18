{-# options_ghc -fno-warn-orphans #-}
{-# options_haddock prune, hide #-}

-- |Orphans for "Data.Time", Internal
module Polysemy.Time.Orphans where

import Data.Time (NominalDiffTime, UTCTime, addUTCTime, diffUTCTime)
import Torsor (Additive (..), Torsor (..))

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
