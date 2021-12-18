{-|
This package provides an interpreter implementation and instances for "Chronos" of the 'Polysemy.Time' library.
-}
module Polysemy.Chronos (
  -- * Interpreters
  module Polysemy.Chronos.Time,
) where

import Polysemy.Chronos.Orphans ()
import Polysemy.Chronos.Time (
  ChronosTime,
  interpretTimeChronos,
  interpretTimeChronosAt,
  interpretTimeChronosConstant,
  interpretTimeChronosConstantNow,
  )
