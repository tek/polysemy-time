module Polysemy.Time.Calendar where

import Data.Time (
  timeOfDayToTime,
  fromGregorian,
  Day,
  DiffTime,
  TimeOfDay(TimeOfDay),
  UTCTime(UTCTime),
  timeToTimeOfDay,
  toGregorian,
  utctDay,
  )
import Prelude hiding (second)

import Polysemy.Time.Data.TimeUnit (Days, Hours, Minutes, Months, NanoSeconds, Seconds, Years, convert)

class HasDate t d | t -> d where
  date :: t -> d
  dateToTime :: d -> t

class HasYear t where
  year :: t -> Years

class HasMonth t where
  month :: t -> Months

class HasDay t where
  day :: t -> Days

class HasHour t where
  hour :: t -> Hours

class HasMinute t where
  minute :: t -> Minutes

class HasSecond t where
  second :: t -> Seconds

class HasNanoSecond t where
  nanoSecond :: t -> NanoSeconds

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
