# About

This Haskell library provides interpreters for the `Time` effect from [polysemy-time].

# Example

```haskell
import Polysemy (Members, runM)
import Polysemy.Chronos (ChronosTime, interpretTimeChronosConstantAt, interpretTimeChronos)
import qualified Polysemy.Time as Time
import Polysemy.Time (MilliSeconds(MilliSeconds), mkDatetime)

startTime :: Chronos.Time
startTime =
  Chronos.datetimeToTime (Time.mkDatetime 2020 01 01 0 0 0)

prog ::
  Ord t =>
  Members [ChronosTime, Embed IO] r =>
  Sem r Bool
prog = do
  Time.sleep (MilliSeconds 1)
  time <- Time.now
  pure (time == startTime)

main :: IO ()
main =
  runM do
    print =<< interpretTimeChronos prog -- False
    print =<< interpretTimeChronosConstantAt prog -- True
```

[Polysemy]: https://hackage.haskell.org/package/polysemy
[polysemy-time]: https://hackage.haskell.org/package/polysemy-time
[chronos]: https://hackage.haskell.org/package/chronos
