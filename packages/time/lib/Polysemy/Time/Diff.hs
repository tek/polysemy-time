module Polysemy.Time.Diff where

import Torsor (Torsor, difference)

import Polysemy.Time.Class.Instant (Instant, dateTime)
import Polysemy.Time.Data.TimeUnit (TimeUnit, convert)

diff ::
  TimeUnit u =>
  Torsor dt u =>
  Instant i1 dt =>
  Instant i2 dt =>
  i1 ->
  i2 ->
  u
diff i1 i2 =
  convert (difference (dateTime i1) (dateTime i2))
