module Polysemy.Time.Data.TimeUnit where

import Data.Time (
  DiffTime,
  NominalDiffTime,
  diffTimeToPicoseconds,
  picosecondsToDiffTime,
  )
import Torsor (Additive, Scaling, Torsor, add, scale)

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

newtype Years =
  Years { unYear :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

newtype Months =
  Months { unMonths :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

newtype Weeks =
  Weeks { unWeeks :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Weeks where
  nanos =
    NanoSeconds 604800000000000

newtype Days =
  Days { unDays :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Days where
  nanos =
    NanoSeconds 86400000000000

newtype Hours =
  Hours { unHours :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Hours where
  nanos =
    NanoSeconds 3600000000000

newtype Minutes =
  Minutes { unMinutes :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Minutes where
  nanos =
    NanoSeconds 60000000000

newtype Seconds =
  Seconds { unSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit Seconds where
  nanos =
    NanoSeconds 1000000000

newtype MilliSeconds =
  MilliSeconds { unMilliSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)
  deriving (Fractional) via (FromSeconds MilliSeconds)

instance TimeUnit MilliSeconds where
  nanos =
    NanoSeconds 1000000

newtype MicroSeconds =
  MicroSeconds { unMicroSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)
  deriving (Fractional) via (FromSeconds MicroSeconds)

instance TimeUnit MicroSeconds where
  nanos =
    NanoSeconds 1000

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

type AddTimeUnit t u1 u2 =
  (TimeUnit u1, TimeUnit u2, Torsor t u2)

addTimeUnit ::
  ∀ t u1 u2 .
  AddTimeUnit t u1 u2 =>
  u1 ->
  t ->
  t
addTimeUnit =
  add . convert

defaultJson ''Years
defaultJson ''Months
defaultJson ''Weeks
defaultJson ''Days
defaultJson ''Hours
defaultJson ''Minutes
defaultJson ''Seconds
defaultJson ''MilliSeconds
defaultJson ''MicroSeconds
defaultJson ''NanoSeconds
