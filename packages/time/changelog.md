# 0.6.0.1

* Support GHC 9.6.

# 0.6.0.0

* Support GHC 9.4.

# 0.5.1.0

* Add `untilJust`, a combinator that repeatedly executes an action until it returns `Just`, sleeping in between.

# 0.5.0.0
* Change the behaviour of `interceptTimeConstantState` so that sleeping polls the current time until it has been
  adjusted further than the sleep duration.
* Add `since`, a convenience combinator that diffs the current time against a reference instant.

# 0.1.4.0
* Add `secondsFrac`, a combinator that converts a unit into a fractional number of seconds.
* Add combinators for repeatedly running an action with a sleep interval
* Add interpreters that remain at a fixed instant

# 0.1.3.0
* Added `measure`, a combinator that returns the time span an action takes.

# 0.1.1.0
* Added `Time.Adjust`, an action that takes a time unit and adds it to the custom start time, if available.
* Added `Fractional` instances for sub-second time units that treat literals as seconds.

# 0.1.0.0
* initial release
