# Unreleased

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
