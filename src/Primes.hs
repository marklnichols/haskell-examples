module Primes
( isPrime
, primeFactors
, primes ) where

import Data.List

----------------------------------------------------------------------------------------------------
-- Exported functions
----------------------------------------------------------------------------------------------------
-- | Tests if an Integer is prime
isPrime :: Integer -> Bool
isPrime n = n `elem` takeWhile (<= n) primes

-- | Infinite lazy list of prime numbers.
primes :: [Integer]
primes = 2 : 3 : filter (\n -> length (primeFactors n) == 1) [5, 7 ..]

-- | Returns the list of prime factors of an Integer
--   Note that 1 is not included in the list.  For any prime p, the list [p] is returned.
primeFactors :: Integer -> [Integer]
primeFactors num = unfoldr f (testFactors num, num) where
    f (_, 1) = Nothing
    f (ps, n) = case find (\p -> (n `rem` p) == 0) ps of
                        Nothing -> Just (n, ([], 1)) -- prime
                        Just fact -> Just (fact, (dropWhile (< fact) ps, n`div` fact))

----------------------------------------------------------------------------------------------------
-- Private functions
----------------------------------------------------------------------------------------------------        
-- | List of primes needed to test as factors for a new candidate prime
testFactors :: Integer -> [Integer]
testFactors n = takeWhile ((<=n) . square) primes 

-- avoiding some num conversion ugliness with (^2)
square :: Integer -> Integer
square x = x * x