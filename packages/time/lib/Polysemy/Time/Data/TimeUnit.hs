module Polysemy.Time.Data.TimeUnit where

import Torsor (Additive, Scaling, scale)

class TimeUnit t where
  nanos :: NanoSeconds

  toNanos :: t -> NanoSeconds
  default toNanos :: Integral t => t -> NanoSeconds
  toNanos t =
    scale (fromIntegral t) (nanos @t)

  fromNanos :: NanoSeconds -> t
  default fromNanos :: Integral t => NanoSeconds -> t
  fromNanos n =
    fromIntegral (n `div` (fromIntegral (nanos @t)))

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

instance TimeUnit MilliSeconds where
  nanos =
    NanoSeconds 1000000

newtype MicroSeconds =
  MicroSeconds { unMicroSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

instance TimeUnit MicroSeconds where
  nanos =
    NanoSeconds 1000

newtype NanoSeconds =
  NanoSeconds { unNanoSeconds :: Int64 }
  deriving (Eq, Show, Generic)
  deriving newtype (Num, Real, Enum, Integral, Ord, Additive)

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

convert ::
  TimeUnit a =>
  TimeUnit b =>
  a ->
  b
convert =
  fromNanos . toNanos

defaultJson ''Weeks
defaultJson ''Days
defaultJson ''Hours
defaultJson ''Minutes
defaultJson ''Seconds
defaultJson ''MilliSeconds
defaultJson ''MicroSeconds
defaultJson ''NanoSeconds
