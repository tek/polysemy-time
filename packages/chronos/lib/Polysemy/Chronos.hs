-- |This package provides "Chronos" based interpreters and instances for the effect and classes defined in
-- "Polysemy.Time".
module Polysemy.Chronos (
  -- * Interpreters
  module Polysemy.Chronos.Interpreter.Time,
) where

import Polysemy.Chronos.Interpreter.Time (
  ChronosTime,
  interpretTimeChronos,
  interpretTimeChronosAt,
  interpretTimeChronosConstant,
  interpretTimeChronosConstantNow,
  )
import Polysemy.Chronos.Orphans ()
