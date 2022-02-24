{-|
This package provides a Polysemy effect for interacting with the current time and sleeping, as well as some time-related
data types and classes.
-}
module Polysemy.Time (
  -- $intro
  -- * Time effect
  module Polysemy.Time.Effect.Time,
  GhcTime,

  -- * Interpreters
  interpretTimeGhc,
  interpretTimeGhcAt,
  interpretTimeGhcConstant,
  interpretTimeGhcConstantNow,

  -- * Data types
  module Polysemy.Time.Data.TimeUnit,
  Calendar (..),
  HasDay (..),
  HasHour (..),
  HasMinute (..),
  HasMonth (..),
  HasNanoSecond (..),
  HasSecond (..),
  HasYear (..),

  -- * Combinators
  measure,
  while,
  loop,
  loop_,
  diff,
) where

import Polysemy.Time.Calendar (
  Calendar (..),
  HasDay (..),
  HasHour (..),
  HasMinute (..),
  HasMonth (..),
  HasNanoSecond (..),
  HasSecond (..),
  HasYear (..),
  )
import Polysemy.Time.Data.TimeUnit (
  Days (..),
  Hours (..),
  MicroSeconds (..),
  MilliSeconds (..),
  Minutes (..),
  Months (..),
  NanoSeconds (..),
  Seconds (..),
  TimeUnit,
  Weeks (..),
  Years (..),
  convert,
  )
import Polysemy.Time.Diff (diff)
import Polysemy.Time.Effect.Time (Time (..), adjust, now, setDate, setTime, sleep, today)
import Polysemy.Time.Interpreter.Ghc (
  GhcTime,
  interpretTimeGhc,
  interpretTimeGhcAt,
  interpretTimeGhcConstant,
  interpretTimeGhcConstantNow,
  )
import Polysemy.Time.Loop (loop, loop_, while)
import Polysemy.Time.Measure (measure)
import Polysemy.Time.Orphans ()

{- $intro
@
import Data.Time (UTCTime)
import Polysemy (Members, runM)
import Polysemy.Chronos (interpretTimeChronos)
import qualified Polysemy.Time as Time
import Polysemy.Time (MilliSeconds(MilliSeconds), Seconds(Seconds), Time, interpretTimeGhcAt, mkDatetime, year)

prog ::
  Ord t =>
  Member (Time t d) r =>
  Sem r ()
prog = do
  time1 \<- Time.now
  Time.sleep (MilliSeconds 10)
  time2 \<- Time.now
  print (time1 \< time2)
  -- True

testTime :: UTCTime
testTime =
  mkDatetime 1845 12 31 23 59 59

main :: IO ()
main =
  runM do
    interpretTimeChronos prog
    interpretTimeGhcAt testTime do
      Time.sleep (Seconds 1)
      time \<- Time.now
      print (year time)
      -- Years { unYear = 1846 }
@
-}
