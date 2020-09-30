module Polysemy.Time.At where

import Polysemy (intercept)
import Torsor (Torsor(add), difference)

import Polysemy.Time.Calendar (HasDate, date, dateToTime)
import qualified Polysemy.Time.Data.Time as Time
import Polysemy.Time.Data.Time (Time)

dateCurrentRelative ::
  ∀ diff t d r .
  Torsor t diff =>
  Members [Time t d, Embed IO, State (t, t)] r =>
  Sem r t
dateCurrentRelative = do
  (startAt, startActual) <- get @(t, t)
  (`add` startAt) . (`difference` startActual) <$> Time.now @t @d

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
