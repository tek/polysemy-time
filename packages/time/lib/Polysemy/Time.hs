module Polysemy.Time (
  -- module Polysemy.Time,
  GhcTime,
  Time,
  interpretTimeGhc,
  interpretTimeGhcAt,
) where

import Polysemy.Time.Data.Time (Time)
import Polysemy.Time.Ghc (GhcTime, interpretTimeGhc, interpretTimeGhcAt)
import Polysemy.Time.Orphans ()
