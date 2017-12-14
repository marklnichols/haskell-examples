module ProjectEuler.Problem10
(sumOfPrimesBelow) where

{- Problem:
    The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

    Find the sum of all the primes below two million.
-}

{- Solution:
    ghci> sumOfPrimesBelow 2000000
    142913828922
-}

import Primes

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow n = sum $ takeWhile (<n) primes







