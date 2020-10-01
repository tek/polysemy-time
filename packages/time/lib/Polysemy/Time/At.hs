module Polysemy.Time.At where

import Polysemy (intercept)
import Torsor (Torsor(add), difference)

import Polysemy.Time.Calendar (HasDate, date, dateToTime)
import qualified Polysemy.Time.Data.Time as Time
import Polysemy.Time.Data.Time (Time)

-- |Determine the current time adjusted for the difference between a custom instant and the time at which the program
-- was started.
dateCurrentRelative ::
  ∀ diff t d r .
  Torsor t diff =>
  Members [Time t d, Embed IO, State (t, t)] r =>
  Sem r t
dateCurrentRelative = do
  (startAt, startActual) <- get @(t, t)
  (`add` startAt) . (`difference` startActual) <$> Time.now @t @d

-- |Given real and adjusted start time, change all calls to 'Time.Now' and 'Time.Today' to be relative to that start
-- time.
-- This needs to be interpreted with a vanilla interpreter for 'Time' once more.
interpretTimeAtWithStart ::
  ∀ diff t d r a .
  Torsor t diff =>
  HasDate t d =>
  Members [Time t d, Embed IO, State (t, t)] r =>
  Sem r a ->
  Sem r a
interpretTimeAtWithStart =
  intercept @(Time t d) \case
    Time.Now ->
      dateCurrentRelative @diff @t @d
    Time.Today ->
      date <$> dateCurrentRelative @diff @t @d
    Time.Sleep t ->
      Time.sleep @t @d t
    Time.SetTime startAt -> do
      startActual <- Time.now @t @d
      put @(t, t) (startAt, startActual)
    Time.SetDate startAt -> do
      startActual <- Time.now @t @d
      put @(t, t) (dateToTime startAt, startActual)
{-# INLINE interpretTimeAtWithStart #-}

-- |Interpret 'Time' so that the time when the program starts is @startAt@.
interpretTimeAt ::
  ∀ (diff :: *) t d r a .
  Torsor t diff =>
  HasDate t d =>
  Members [Time t d, Embed IO] r =>
  t ->
  Sem r a ->
  Sem r a
interpretTimeAt startAt sem = do
  startActual <- Time.now @t @d
  evalState (startAt, startActual) . interpretTimeAtWithStart @diff @t @d . raise $ sem
{-# INLINE interpretTimeAt #-}
