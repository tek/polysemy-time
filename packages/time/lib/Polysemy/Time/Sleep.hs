module Polysemy.Time.Sleep where

import Control.Concurrent (threadDelay)

import Polysemy.Time.Data.TimeUnit (MicroSeconds(MicroSeconds), TimeUnit, convert)

uSleep ::
  Member (Embed IO) r =>
  MicroSeconds ->
  Sem r ()
uSleep (MicroSeconds us) =
  embed (threadDelay (fromIntegral us))

tSleep ::
  Member (Embed IO) r =>
  TimeUnit t =>
  t ->
  Sem r ()
tSleep =
  uSleep . convert
