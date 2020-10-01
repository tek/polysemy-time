module Polysemy.Time.Calendar where

import Data.Time (
  Day,
  DiffTime,
  TimeOfDay(TimeOfDay),
  UTCTime(UTCTime),
  fromGregorian,
  timeOfDayToTime,
  timeToTimeOfDay,
  toGregorian,
  utctDay,
  )
import Prelude hiding (second)

import Polysemy.Time.Data.TimeUnit (Days, Hours, Minutes, Months, NanoSeconds, Seconds, Years, convert)

-- |Utility for 'Polysemy.Time.At.interpretTimeAtWithStart'.
class HasDate t d | t -> d where
  date :: t -> d
  dateToTime :: d -> t

-- |Extract the year component from a date.
class HasYear t where
  year :: t -> Years

-- |Extract the month component from a date.
class HasMonth t where
  month :: t -> Months

-- |Extract the day component from a date.
class HasDay t where
  day :: t -> Days

-- |Extract the hour component from a datetime or time.
class HasHour t where
  hour :: t -> Hours

-- |Extract the minute component from a datetime or time.
class HasMinute t where
  minute :: t -> Minutes

-- |Extract the second component from a datetime or time.
class HasSecond t where
  second :: t -> Seconds

-- |Extract the nanosecond component from a datetime or time.
class HasNanoSecond t where
  nanoSecond :: t -> NanoSeconds

-- |Construct datetimes, dates or times from integers.
class Calendar dt where
  type CalendarDate dt :: *
  type CalendarTime dt :: *
  mkDate :: Int64 -> Int64 -> Int64 -> CalendarDate dt
  mkTime :: Int64 -> Int64 -> Int64 -> CalendarTime dt
  mkDatetime :: Int64 -> Int64 -> Int64 -> Int64 -> Int64 -> Int64 -> dt

instance HasDate UTCTime Day where
  date =
    utctDay
  dateToTime d =
    UTCTime d 0

instance HasYear Day where
  year (toGregorian -> (y, _, _)) =
    fromIntegral y

instance HasYear UTCTime where
  year =
    year . utctDay

instance HasMonth Day where
  month (toGregorian -> (_, m, _)) =
    fromIntegral m

instance HasMonth UTCTime where
  month =
    month . utctDay

instance HasDay Day where
  day (toGregorian -> (_, _, d)) =
    fromIntegral d

instance HasDay UTCTime where
  day =
    day . utctDay

instance HasHour TimeOfDay where
  hour (TimeOfDay h _ _) =
    fromIntegral h

instance HasHour DiffTime where
  hour =
    hour . timeToTimeOfDay

instance HasMinute TimeOfDay where
  minute (TimeOfDay _ m _) =
    fromIntegral m

instance HasMinute DiffTime where
  minute =
    minute . timeToTimeOfDay

instance HasSecond TimeOfDay where
  second (TimeOfDay _ _ s) =
    truncate s

instance HasSecond DiffTime where
  second =
    second . timeToTimeOfDay

instance HasNanoSecond TimeOfDay where
  nanoSecond t =
    convert (second t)

instance HasNanoSecond DiffTime where
  nanoSecond =
    nanoSecond . timeToTimeOfDay

instance Calendar UTCTime where
  type CalendarDate UTCTime = Day
  type CalendarTime UTCTime = DiffTime
  mkDate y m d =
    fromGregorian (fromIntegral y) (fromIntegral m) (fromIntegral d)
  mkTime h m s =
    timeOfDayToTime (TimeOfDay (fromIntegral h) (fromIntegral m) (fromIntegral s))
  mkDatetime y mo d h mi s =
    UTCTime (mkDate @UTCTime y mo d) (mkTime @UTCTime h mi s)
