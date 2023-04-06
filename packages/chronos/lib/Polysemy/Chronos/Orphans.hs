{-# options_ghc -fno-warn-orphans #-}
{-# options_haddock prune, hide #-}

-- |Orphans for "Chronos", Internal
module Polysemy.Chronos.Orphans where

import qualified Chronos
import Chronos (
  Date (Date),
  Datetime (Datetime),
  DayOfMonth (DayOfMonth),
  Month (Month),
  Time,
  TimeOfDay (TimeOfDay),
  Timespan (Timespan),
  Year (Year),
  datetimeToTime,
  timeToDatetime,
  )
import Polysemy.Time.Calendar (
  Calendar (..),
  HasDate (..),
  HasDay (..),
  HasHour (..),
  HasMinute (..),
  HasMonth (..),
  HasNanoSecond (..),
  HasSecond (..),
  HasYear (..),
  )
import Polysemy.Time.Class.Instant (Instant (dateTime))
import Polysemy.Time.Data.TimeUnit (
  Days (Days),
  Hours (Hours),
  Minutes (Minutes),
  Months (Months),
  NanoSeconds (NanoSeconds),
  TimeUnit (..),
  Years (Years),
  convert,
  )
import Prelude hiding (second)

instance HasDate Time Date where
  date =
    Chronos.datetimeDate . Chronos.timeToDatetime
  dateToTime d =
    Chronos.datetimeToTime (Datetime d (TimeOfDay 0 0 0))

instance HasYear Date where
  year (Date (Chronos.Year y) _ _) =
    Years (fromIntegral y)

instance HasYear Datetime where
  year (Datetime d _) =
    year d

instance HasYear Time where
  year =
    year . Chronos.timeToDatetime

instance HasMonth Date where
  month (Date _ (Chronos.Month m) _) =
    Months (fromIntegral m)

instance HasMonth Datetime where
  month (Datetime d _) =
    month d

instance HasMonth Time where
  month =
    month . Chronos.timeToDatetime

instance HasDay Date where
  day (Date _ _ (Chronos.DayOfMonth d)) =
    Days (fromIntegral d)

instance HasDay Datetime where
  day (Datetime d _) =
    day d

instance HasDay Time where
  day =
    day . Chronos.timeToDatetime

instance HasHour TimeOfDay where
  hour (TimeOfDay h _ _) =
    Hours (fromIntegral h)

instance HasHour Datetime where
  hour (Datetime _ t) =
    hour t

instance HasHour Time where
  hour =
    hour . Chronos.timeToDatetime

instance HasMinute TimeOfDay where
  minute (TimeOfDay _ m _) =
    Minutes (fromIntegral m)

instance HasMinute Datetime where
  minute (Datetime _ t) =
    minute t

instance HasMinute Time where
  minute =
    minute . Chronos.timeToDatetime

instance HasNanoSecond TimeOfDay where
  nanoSecond (TimeOfDay _ _ s) =
    NanoSeconds s

instance HasNanoSecond Datetime where
  nanoSecond (Datetime _ t) =
    nanoSecond t

instance HasNanoSecond Time where
  nanoSecond =
    nanoSecond . Chronos.timeToDatetime

instance HasSecond TimeOfDay where
  second t =
    convert (nanoSecond t)

instance HasSecond Datetime where
  second (Datetime _ t) =
    second t

instance HasSecond Time where
  second =
    second . Chronos.timeToDatetime

instance Calendar Datetime where
  type CalendarDate Datetime = Date
  type CalendarTime Datetime = TimeOfDay
  mkDate y m d =
    Date (Year (fromIntegral y)) (Month (fromIntegral m - 1)) (DayOfMonth (fromIntegral d))
  mkTime h m s =
    TimeOfDay (fromIntegral h) (fromIntegral m) (s * 1000000000)
  mkDatetime y mo d h mi s =
    Datetime (mkDate @Datetime y mo d) (mkTime @Datetime h mi s)

instance TimeUnit Timespan where
  nanos =
    1
  toNanos (Timespan ns) =
    NanoSeconds ns
  fromNanos (NanoSeconds ns) =
    Timespan ns

instance Instant Chronos.Time Chronos.Time where
  dateTime =
    id

instance Instant Chronos.Datetime Chronos.Time where
  dateTime =
    datetimeToTime
