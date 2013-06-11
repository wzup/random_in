random_in
=========

A generator of random numbers. Implemented as a built-in Integer class' method. 

Generates an array of specified quantity of random numbers. Generated numbers may repeat or may not repeat - it is configurable. You can set a range of numbers from which to generate by defining the beggining and the end of the range. Ruby's Random class is used as generator. Tested.


How it works
------------
```
# Generated numbers are all unique
rs = 5.randoms_in(1, 10 , false) #=> [4, 8, 9, 10, 1]

# Generate numbers may repeat
rs = 5.randoms_in(1, 10 , true) #=> [7, 2, 3, 2, 6]
```

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

