{-# options_haddock prune #-}

-- |'Time' interpreters for the data types from "Data.Time", Internal
module Polysemy.Time.Interpreter.Ghc where

import Control.Concurrent (threadDelay)
import Data.Time (Day, NominalDiffTime, UTCTime, utctDay)
import Data.Time.Clock.System (getSystemTime, systemToUTCTime)

import Polysemy.Time.At (interceptTimeAt, interceptTimeConstant, interceptTimeConstantNow)
import Polysemy.Time.Data.TimeUnit (MicroSeconds (MicroSeconds), convert)
import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Effect.Time (Time)
import Polysemy.Time.Orphans ()

-- |Convenience alias for 'Data.Time'.
type GhcTime =
  Time UTCTime Day

now ::
  Member (Embed IO) r =>
  Sem r UTCTime
now =
  systemToUTCTime <$> embed getSystemTime

-- |Interpret 'Time' with the types from 'Data.Time'.
interpretTimeGhc ::
  Member (Embed IO) r =>
  InterpreterFor GhcTime r
interpretTimeGhc =
  interpret \case
    Time.Now ->
      now
    Time.Today ->
      utctDay <$> now
    Time.Sleep (convert -> MicroSeconds us) ->
      embed (threadDelay (fromIntegral us))
    Time.SetTime _ ->
      unit
    Time.Adjust _ ->
      unit
    Time.SetDate _ ->
      unit

-- |Interpret 'Time' with the types from 'Data.Time', customizing the current time at the start of interpretation.
interpretTimeGhcAt ::
  Member (Embed IO) r =>
  UTCTime ->
  InterpreterFor GhcTime r
interpretTimeGhcAt t =
  interpretTimeGhc . interceptTimeAt @NominalDiffTime t

-- |Interpret 'Time' with the types from 'Data.Time', customizing the current time to be constant.
-- Sleeping will only terminate after the time has been advanced by `Time.adjust`.
interpretTimeGhcConstant ::
  Member (Embed IO) r =>
  UTCTime ->
  InterpreterFor GhcTime r
interpretTimeGhcConstant t =
  interpretTimeGhc . interceptTimeConstant t

-- |Interpret 'Time' with the types from 'Data.Time', customizing the current time to be constantly the time at the
-- start of interpretation.
-- Sleeping will only terminate after the time has been advanced by `Time.adjust`.
interpretTimeGhcConstantNow ::
  Member (Embed IO) r =>
  InterpreterFor GhcTime r
interpretTimeGhcConstantNow =
  interpretTimeGhc . interceptTimeConstantNow @UTCTime
