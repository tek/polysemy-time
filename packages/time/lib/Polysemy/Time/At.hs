-- |Interceptors for fixing a specific time, Internal
module Polysemy.Time.At where

import Control.Concurrent.STM (newTVarIO)
import Torsor (Torsor (add), difference)

import Polysemy.Time.Calendar (HasDate, date, dateToTime)
import Polysemy.Time.Data.TimeUnit (TimeUnit, addTimeUnit)
import qualified Polysemy.Time.Effect.Time as Time
import Polysemy.Time.Effect.Time (Time)

-- |Determine the current time adjusted for the difference between a custom instant and the time at which the program
-- was started.
dateCurrentRelative ::
  ∀ diff t d r .
  Torsor t diff =>
  Members [Time t d, AtomicState (t, t)] r =>
  Sem r t
dateCurrentRelative = do
  (startAt, startActual) <- atomicGet @(t, t)
  (`add` startAt) . (`difference` startActual) <$> Time.now @t @d

-- |Given real and adjusted start time, change all calls to 'Time.Now' and 'Time.Today' to be relative to that start
-- time.
-- This needs to be interpreted with a vanilla interpreter for 'Time' once more.
interceptTimeAtWithStart ::
  ∀ diff t d r a .
  Torsor t diff =>
  TimeUnit diff =>
  HasDate t d =>
  Members [Time t d, AtomicState (t, t)] r =>
  Sem r a ->
  Sem r a
interceptTimeAtWithStart =
  intercept @(Time t d) \case
    Time.Now ->
      dateCurrentRelative @diff @t @d
    Time.Today ->
      date <$> dateCurrentRelative @diff @t @d
    Time.Sleep t ->
      Time.sleep @t @d t
    Time.SetTime startAt -> do
      startActual <- Time.now @t @d
      atomicPut @(t, t) (startAt, startActual)
    Time.Adjust diff -> do
      atomicModify' @(t, t) \ (old, actual) -> (addTimeUnit diff old, actual)
    Time.SetDate startAt -> do
      startActual <- Time.now @t @d
      atomicPut @(t, t) (dateToTime startAt, startActual)
{-# inline interceptTimeAtWithStart #-}

-- |Interpret 'Time' so that the time when the program starts is @startAt@.
interceptTimeAt ::
  ∀ (diff :: Type) t d r a .
  TimeUnit diff =>
  Torsor t diff =>
  HasDate t d =>
  Members [Time t d, Embed IO] r =>
  t ->
  Sem r a ->
  Sem r a
interceptTimeAt startAt sem = do
  startActual <- Time.now @t @d
  tv <- embed (newTVarIO (startAt, startActual))
  runAtomicStateTVar tv . interceptTimeAtWithStart @diff @t @d . raise $ sem
{-# inline interceptTimeAt #-}

-- |Change all calls to 'Time.Now' and 'Time.Today' to return the given start time.
-- This needs to be interpreted with a vanilla interpreter for 'Time' once more.
interceptTimeConstantState ::
  ∀ t d r a .
  HasDate t d =>
  Members [Time t d, AtomicState t] r =>
  Sem r a ->
  Sem r a
interceptTimeConstantState =
  intercept @(Time t d) \case
    Time.Now ->
      atomicGet
    Time.Today ->
      atomicGets @t date
    Time.Sleep t ->
      Time.sleep @t @d t
    Time.SetTime now ->
      atomicPut now
    Time.Adjust diff ->
      atomicModify' @t (addTimeUnit diff)
    Time.SetDate startAt ->
      atomicPut @t (dateToTime startAt)
{-# inline interceptTimeConstantState #-}

-- |Interpret 'Time' so that the time is always @startAt@.
--
-- The time can still be changed with 'Time.setTime', 'Time.adjust' and 'Time.setDate'.
interceptTimeConstant ::
  ∀ t d r a .
  HasDate t d =>
  Members [Time t d, Embed IO] r =>
  t ->
  Sem r a ->
  Sem r a
interceptTimeConstant startAt sem = do
  tv <- embed (newTVarIO startAt)
  runAtomicStateTVar tv . interceptTimeConstantState @t . raise $ sem
{-# inline interceptTimeConstant #-}

-- |Interpret 'Time' so that the time is always the time at the start of interpretation.
--
-- The time can still be changed with 'Time.setTime', 'Time.adjust' and 'Time.setDate'.
interceptTimeConstantNow ::
  ∀ t d r a .
  HasDate t d =>
  Members [Time t d, Embed IO] r =>
  Sem r a ->
  Sem r a
interceptTimeConstantNow sem = do
  now <- Time.now @t @d
  tv <- embed (newTVarIO now)
  runAtomicStateTVar tv . interceptTimeConstantState @t . raise $ sem
{-# inline interceptTimeConstantNow #-}
