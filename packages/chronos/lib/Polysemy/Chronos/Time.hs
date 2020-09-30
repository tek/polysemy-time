module Polysemy.Chronos.Time where

import qualified Chronos as Chronos
import Chronos (Timespan(Timespan), dateToDay, dayToDate, dayToTimeMidnight, timeToDayTruncate)
import Control.Concurrent (threadDelay)

import Polysemy.Chronos.Orphans ()
import Polysemy.Time.At (interpretTimeAt)
import qualified Polysemy.Time.Data.Time as Core
import Polysemy.Time.Data.TimeUnit (MicroSeconds, MicroSeconds(MicroSeconds), TimeUnit, convert)

type Time =
  Core.Time Chronos.Time Chronos.Date

now ::
  Member (Embed IO) r =>
  Sem r Chronos.Time
now =
  embed Chronos.now

microSleep ::
  Member (Embed IO) r =>
  MicroSeconds ->
  Sem r ()
microSleep (MicroSeconds us) =
  embed (threadDelay (fromIntegral us))

tSleep ::
  Member (Embed IO) r =>
  TimeUnit t =>
  t ->
  Sem r ()
tSleep =
  microSleep . convert

timeToDate :: Chronos.Time -> Chronos.Date
timeToDate =
  dayToDate . timeToDayTruncate

dateToTime :: Chronos.Date -> Chronos.Time
dateToTime =
  dayToTimeMidnight . dateToDay

interpretTimeChronos ::
  Member (Embed IO) r =>
  InterpreterFor Time r
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
    Core.SetDate _ ->
      unit
{-# INLINE interpretTimeChronos #-}

interpretTimeChronosAt ::
  Member (Embed IO) r =>
  Chronos.Time ->
  InterpreterFor Time r
interpretTimeChronosAt =
  interpretTimeChronos .: interpretTimeAt @Timespan
{-# INLINE interpretTimeChronosAt #-}

sleep ::
  TimeUnit t =>
  Member Time r =>
  t ->
  Sem r ()
sleep =
  Core.sleep
{-# INLINE sleep #-}

usleep ::
  Member Time r =>
  MicroSeconds ->
  Sem r ()
usleep =
  Core.sleep
{-# INLINE usleep #-}

negatePeriod :: Timespan -> Timespan
negatePeriod (Timespan t) =
  Timespan (-t)
