{-|
This package provides a Polysemy effect for interacting with the current time and sleeping, as well as some time-related
data types and classes.
-}
module Polysemy.Time (
  -- $intro
  -- * Time effect
  module Polysemy.Time.Data.Time,
  GhcTime,
  -- * Interpreters
  interpretTimeGhc,
  interpretTimeGhcAt,
  -- * Data types
  module Polysemy.Time.Data.TimeUnit,
  module Polysemy.Time.Calendar,
) where

import Polysemy.Time.Calendar (
  Calendar(..),
  HasDay(..),
  HasHour(..),
  HasMinute(..),
  HasMonth(..),
  HasNanoSecond(..),
  HasSecond(..),
  HasYear(..),
  )
import Polysemy.Time.Data.Time (Time(..), now, setDate, setTime, sleep, today)
import Polysemy.Time.Data.TimeUnit (
  Days(Days),
  Hours(Hours),
  MicroSeconds(MicroSeconds),
  MilliSeconds(MilliSeconds),
  Minutes(Minutes),
  Months(Months),
  NanoSeconds(NanoSeconds),
  Seconds(Seconds),
  TimeUnit,
  Weeks(Weeks),
  Years(Years),
  convert,
  )
import Polysemy.Time.Ghc (GhcTime, interpretTimeGhc, interpretTimeGhcAt)
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
