module ProjectEuler.Problem1
    (sumMultiples) where

{- Problem:
    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
    The sum of these multiples is 23.

    Find the sum of all the multiples of 3 or 5 below 1000.
-}

{- Solution:
    ghci> sumMultiples 1000
    233168
-}
sumMultiples :: Integer -> Integer
sumMultiples below = 
    let xs = [1, 2 ..(below-1)] :: [Integer]
    in foldr f 0 xs where
        f n oldSum = 
            case (n `mod` 3, n `mod` 5) of
                (_, 0) -> oldSum + n
                (0, _) -> oldSum + n
                _      -> oldSum