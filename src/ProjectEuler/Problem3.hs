module ProjectEuler.Problem3
    (maxPFactor) where

{- Problem:
    The prime factors of 13195 are 5, 7, 13 and 29.

    What is the largest prime factor of the number 600851475143 ?
-}

{- Solution:
    ghci> maxPFactor 600851475143
    6857
-}

import Primes 

maxPFactor :: Integer -> Integer
maxPFactor n = maximum $ primeFactors n

