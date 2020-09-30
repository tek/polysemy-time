# About

This Haskell library provides a [Polysemy] effect for accessing the current
time and date.

# Example

```haskell
import Polysemy (runM, resourceToIO)
import Polysemy.Chronos (interpretTimeChrons)
```

[Polysemy]: https://hackage.haskell.org/package/polysemy
