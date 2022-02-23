-- |TimeUnit Class and Data Types, Internal
module Polysemy.Time.Data.TimeUnit where

import Data.Fixed (div')
import Data.Time (
  DiffTime,
  NominalDiffTime,
  diffTimeToPicoseconds,
  picosecondsToDiffTime,
  )
import Torsor (Additive, Scaling, Torsor, add, scale)

import Polysemy.Time.Json (json)

-- |For deriving via.
newtype FromSeconds a =
  FromSeconds a
  deriving (Eq, Show)
  deriving newtype (Num)

instance (Integral a, TimeUnit a) => Fractional (FromSeconds a) where
  fromRational secs =
    FromSeconds (convert (NanoSeconds (round (1e9 * secs))))
  FromSeconds a / FromSeconds b =
    FromSeconds (a `div` b)

-- |Types that represent an amount of time that can be converted to each other.
-- The methods are internal, the API function is 'convert'.
class TimeUnit u where
  nanos :: NanoSeconds

  toNanos :: u -> NanoSeconds
  default toNanos :: Integral u => u -> NanoSeconds
  toNanos u =
    scale (fromIntegral u) (nanos @u)

  fromNanos :: NanoSeconds -> u
  default fromNanos :: Integral u => NanoSeconds -> u
  fromNanos n =
    fromIntegral (n `div` (nanos @u))

-- * Data types used to specify time spans, e.g. for sleeping.

-- |Years.
newtype Years =
  Years { unYear :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

-- |Months.
newtype Months =
  Months { unMonths :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

-- |Weeks.
newtype Weeks =
  Weeks { unWeeks :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Weeks where
  nanos =
    NanoSeconds 604800000000000

-- |Days.
newtype Days =
  Days { unDays :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Days where
  nanos =
    NanoSeconds 86400000000000

-- |Hours.
newtype Hours =
  Hours { unHours :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Hours where
  nanos =
    NanoSeconds 3600000000000

-- |Minutes.
newtype Minutes =
  Minutes { unMinutes :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Minutes where
  nanos =
    NanoSeconds 60000000000

-- |Seconds.
newtype Seconds =
  Seconds { unSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Seconds where
  nanos =
    NanoSeconds 1000000000

-- |Milliseconds.
newtype MilliSeconds =
  MilliSeconds { unMilliSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)
  deriving (Fractional) via (FromSeconds MilliSeconds)

instance TimeUnit MilliSeconds where
  nanos =
    NanoSeconds 1000000

-- |Microseconds.
newtype MicroSeconds =
  MicroSeconds { unMicroSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)
  deriving (Fractional) via (FromSeconds MicroSeconds)

instance TimeUnit MicroSeconds where
  nanos =
    NanoSeconds 1000

-- |Nanoseconds.
-- This is the base unit for all conversions.
newtype NanoSeconds =
  NanoSeconds { unNanoSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)
  deriving (Fractional) via (FromSeconds NanoSeconds)

instance Scaling NanoSeconds Int64 where
  scale s (NanoSeconds v) =
    NanoSeconds (scale s v)

instance TimeUnit NanoSeconds where
  nanos =
    NanoSeconds 1
  toNanos =
    id
  fromNanos =
    id

safeDiv ::
  Real a =>
  Integral a =>
  a ->
  a ->
  Maybe a
safeDiv _ 0 =
  Nothing
safeDiv n d =
  Just (n `div'` d)
{-# inline safeDiv #-}

divOr0 ::
  Real a =>
  Integral a =>
  a ->
  a ->
  a
divOr0 l r =
  fromMaybe 0 (safeDiv l r)
{-# inline divOr0 #-}

instance TimeUnit DiffTime where
  nanos =
    0
  toNanos dt =
    NanoSeconds (divOr0 (fromIntegral (diffTimeToPicoseconds dt)) 1000)
  fromNanos (NanoSeconds ns) =
    picosecondsToDiffTime (fromIntegral ns * 1000)

instance TimeUnit NominalDiffTime where
  nanos =
    0
  toNanos dt =
    NanoSeconds (divOr0 (fromIntegral (fromEnum dt)) 1000)
  fromNanos (NanoSeconds ns) =
    toEnum (fromIntegral ns) * 1000

-- |Convert between different time spans.
--
-- >>> convert (picosecondsToDiffTime 50000000) :: MicroSeconds
-- MicroSeconds {unMicroSeconds = 50}
--
-- >>> convert (MilliSeconds 5) :: MicroSeconds
-- MicroSeconds 5000
convert ::
  TimeUnit a =>
  TimeUnit b =>
  a ->
  b
convert =
  fromNanos . toNanos

-- |Convenience alias for 'addTimeUnit'.
type AddTimeUnit t u1 u2 =
  (TimeUnit u1, TimeUnit u2, Torsor t u2)

-- |Add a time unit to an instant.
addTimeUnit ::
  ∀ t u1 u2 .
  AddTimeUnit t u1 u2 =>
  u1 ->
  t ->
  t
addTimeUnit =
  add . convert

-- |Convert a unit into a number of seconds, keeping the subsecond part as fractional digits.
secondsFrac ::
  TimeUnit u =>
  u ->
  Double
secondsFrac u =
  fromIntegral (unNanoSeconds (convert u)) / 1e9

json ''Years
json ''Months
json ''Weeks
json ''Days
json ''Hours
json ''Minutes
json ''Seconds
json ''MilliSeconds
json ''MicroSeconds
json ''NanoSeconds
