module ProjectEuler.Problem7
    (nthPrime) where

{- Problem:
    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime 
    is 13.

    What is the 10 001st prime number?
-}

{- Solution:
    ghci> nthPrime 10001
    104743
-}

import Primes

nthPrime :: Int -> Integer
nthPrime n = (last . take n) primes





