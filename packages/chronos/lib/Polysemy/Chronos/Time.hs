module Polysemy.Chronos.Time where

import qualified Chronos as Chronos
import Chronos (Timespan (Timespan), dateToDay, dayToDate, dayToTimeMidnight, timeToDayTruncate)
import Polysemy.Time.At (interceptTimeAt, interceptTimeConstant, interceptTimeConstantNow)
import qualified Polysemy.Time.Data.Time as Core
import Polysemy.Time.Data.Time (Time)
import Polysemy.Time.Sleep (tSleep)

import Polysemy.Chronos.Orphans ()

-- |Convenience alias for 'Chronos'.
type ChronosTime =
  Time Chronos.Time Chronos.Date

now ::
  Member (Embed IO) r =>
  Sem r Chronos.Time
now =
  embed Chronos.now

timeToDate :: Chronos.Time -> Chronos.Date
timeToDate =
  dayToDate . timeToDayTruncate

dateToTime :: Chronos.Date -> Chronos.Time
dateToTime =
  dayToTimeMidnight . dateToDay

-- |Interpret 'Time' with the types from 'Chronos'.
interpretTimeChronos ::
  Member (Embed IO) r =>
  InterpreterFor ChronosTime r
interpretTimeChronos =
  interpret \case
    Core.Now ->
      now
    Core.Today ->
      timeToDate <$> now
    Core.Sleep t ->
      tSleep t
    Core.SetTime _ ->
      unit
    Core.Adjust _ ->
      unit
    Core.SetDate _ ->
      unit
{-# inline interpretTimeChronos #-}

-- |Interpret 'Time' with the types from 'Chronos', customizing the current time at the start of interpretation.
interpretTimeChronosAt ::
  Member (Embed IO) r =>
  Chronos.Time ->
  InterpreterFor ChronosTime r
interpretTimeChronosAt t =
  interpretTimeChronos . interceptTimeAt @Timespan t
{-# inline interpretTimeChronosAt #-}

-- |Interpret 'Time' with the types from 'Chronos', customizing the current time to be constant.
interpretTimeChronosConstant ::
  Member (Embed IO) r =>
  Chronos.Time ->
  InterpreterFor ChronosTime r
interpretTimeChronosConstant t =
  interpretTimeChronos . interceptTimeConstant t
{-# inline interpretTimeChronosConstant #-}

-- |Interpret 'Time' with the types from 'Chronos', customizing the current time to be constantly the time at the
-- start of interpretation.
interpretTimeChronosConstantNow ::
  Member (Embed IO) r =>
  InterpreterFor ChronosTime r
interpretTimeChronosConstantNow =
  interpretTimeChronos . interceptTimeConstantNow @Chronos.Time
{-# inline interpretTimeChronosConstantNow #-}

negateTimespan :: Timespan -> Timespan
negateTimespan (Timespan t) =
  Timespan (-t)
