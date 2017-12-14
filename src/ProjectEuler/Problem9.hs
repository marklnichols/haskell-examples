module ProjectEuler.Problem9
    ( pythagChecker
    , pythagChecker' ) where

{- Problem:
    A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
    a^2 + b^2 = c^2

    For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
-}

{- Solution:
    ghci> pythagChecker 1000
    31875000

    ghci>pythagChecker' 1000
    ((200,375,425),31875000)
-}

import Data.List

pythagChecker :: Integer -> Integer
pythagChecker theSum = snd $ pythagChecker' theSum

pythagChecker' :: Integer -> ((Integer, Integer, Integer), Integer)
pythagChecker' theSum = 
    let theInts  = [1, 2 .. (theSum - 2)]
        result = sort [((x, y, z), x * y * z) | x <- theInts, y <- theInts, z <- theInts
                                 , x + y + z == 1000
                                 , square x + square y == square z]
    in if null result then ((0, 0, 0), 0) else head result

square :: Integer -> Integer
square n = n * n 

