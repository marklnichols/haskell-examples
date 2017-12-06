module ProjectEuler.Problem4
    (largestPali) where

{- Problem:
    A palindromic number reads the same both ways. The largest palindrome made from the product of 
    two 2-digit numbers is 9009 = 91 × 99.

    Find the largest palindrome made from the product of two 3-digit numbers.
-}

{- Solution:
    ghci> largestPali
    906609
-}

largestPali :: Integer
largestPali = 
    let pairs = getPairs [100, 101 .. 999]
        -- prods = filter isPali $ fmap (\p -> fst p * snd p) pairs
        prods = filter isPali $ fmap (uncurry (*)) pairs 
    in maximum prods

getPairs :: [Integer] -> [(Integer, Integer)]
getPairs xs = do
    x <- xs
    y <- xs
    [(x, y)]

isPali :: Integer -> Bool
isPali x = (reverse . show) x == show x

