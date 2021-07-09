module Polysemy.Time.Ghc where

import Control.Concurrent (threadDelay)
import Data.Time (Day, NominalDiffTime, UTCTime, utctDay)
import Data.Time.Clock.System (getSystemTime, systemToUTCTime)

import Polysemy.Time.At (interpretTimeAt)
import qualified Polysemy.Time.Data.Time as Time
import Polysemy.Time.Data.Time (Time)
import Polysemy.Time.Data.TimeUnit (MicroSeconds (MicroSeconds), convert)
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
  interpretTimeGhc . interpretTimeAt @NominalDiffTime t
