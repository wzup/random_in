random_in
=========

A generator of random numbers. Implemented as a built-in Integer class' method. 

Generates an array of specified quantity of random numbers. Generated numbers may repeat or may not repeat - it is configurable. You can set a range of numbers from which to generate by defining the beggining and the end of the range. Ruby's Random class is used as generator. Tested.


How it works
------------
```
# Generated numbers are all unique
rs = 5.randoms_in(from = 1, to = 10, may_repeat = false) #=> [4, 8, 9, 10, 1]

# Generate numbers may repeat
rs = 5.randoms_in(1, 10 , true) #=> [7, 2, 3, 2, 6]
```

Signature:
```int.randoms_in(int|string, int|string, bool)```


What's special
--------------
Two forms of the name - plural and singular:

`randoms_in` and `random_in`

```
# Singular
1.random_in(1, 10, false) #=> [3]

# Plural
5.randoms_in(1, 10, false) #=> [4, 5, 9, 2, 7]
```

However, no errors will be thrown if switch or confuse them. This is just a syntactic sugar.

Exceptions thrown
------------------
The plugin may throw two its own exceptions. Both of them are `ArgumentError` exeptions:

1. The result set cannot be less than your number when parameter `may_repeat` if `false`:
```
# error
3.randoms_in(from = 1, to = 2, may_repeat = false) # rs.length == 2, but you requested 3
3.randoms_in(-1, 0, false) # the same, rs.length == 2, but you requested 3

# no error
3.randoms_in(1, 2, true) # doesn't matter what is your number, numbers may repeat in rs
3.randoms_in(-1, 0, true)
```

2. Parameter `from` has to be less than parameter `to`:
```
5.randoms_in(from = 10, to = 1, may_repeat = false) <-- error
5.randoms_in(1, 10, false) <-- no error
```

How to get
----------
