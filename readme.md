# About

This Haskell library provides a [Polysemy] effect for accessing the current time and date, and interpreters using
[time] and [chronos].

# Example

```haskell
import Data.Time (UTCTime)
import Polysemy (Members, runM)
import Polysemy.Chronos (interpretTimeChronos)
import qualified Polysemy.Time as Time
import Polysemy.Time (MilliSeconds(MilliSeconds), Seconds(Seconds), Time, interpretTimeGhcAt, mkDatetime, year)

prog ::
  Ord t =>
  Members [Time t d, Embed IO] r =>
  Sem r ()
prog = do
  time1 <- Time.now
  Time.sleep (MilliSeconds 10)
  time2 <- Time.now
  print (time1 < time2)
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
      time <- Time.now
      print (year time)
      -- Years { unYear = 1846 }
```

# Effect

The only effect contained in **polysemy-time** is:

```haskell
data Time (time :: Type) (date :: Type) :: Effect where
  Now :: Time t d m t
  Today :: Time t d m d
  Sleep :: TimeUnit u => u -> Time t d m ()
  SetTime :: t -> Time t d m ()
  SetDate :: d -> Time t d m ()
```

Interpreters are provided for the [time library](time) bundled with GHC and [chronos].

The type parameters correspond to the representations in the implementation,
like `Data.Time.UTCTime`/`Chronos.Time` and `Data.Time.Day`/`Chronos.Date`.

`SetTime` and `SetDate` only have meaning when you're running in a testing context.

A special interpreter variant suffixed with `At` exists for both
implementations, with which the current time is overridden to be relative to
the supplied override fixed at the start of interpretation.
This is useful for testing.

# Utilities

A set of newtypes representing timespans are provided for convenience.
Internally, the interpreters operate on `NanoSecond`s.

The class `TimeUnit` ties those types, and the types `Chronos.Timespan` and
`Data.Time.DiffTime`, together to allow you to convert between them with the
function `convert`:

```haskell
>>> convert (picosecondsToDiffTime 50000000) :: MicroSeconds
MicroSeconds {unMicroSeconds = 50}

>>> convert (Days 5) :: Timespan
Timespan {getTimespan = 432000000000000}
```

The class `Calendar` allows you to construct `UTCTime` and `Chronos.Datetime`
from integers with the function `mkDatetime`, as demonstrated in the first
example.

[Polysemy]: https://hackage.haskell.org/package/polysemy
[time]: https://hackage.haskell.org/package/time
[chronos]: https://hackage.haskell.org/package/chronos
