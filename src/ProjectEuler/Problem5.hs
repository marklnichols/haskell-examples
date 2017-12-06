module ProjectEuler.Problem5
(smallestDivAll) where

{- Problem:
    2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any 
    remainder.

    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

{- Solution:
    ghci> smallestDivAll 20
    232792560
-}
import Data.Maybe
import Safe

smallestDivAll :: Integer -> Integer
smallestDivAll count = 
    let mapped = foldr f [] [1, 2 ..] 
        f x r = if checkDiv x count
                    then x : r 
                    else r
    in fromMaybe 0 $ headMay mapped

checkDiv :: Integer -> Integer -> Bool
checkDiv theN count = 
    let xs = [1, 2 .. count] 
    in snd $ loop theN count xs where
        loop :: Integer -> Integer -> [Integer] -> ([Integer], Bool)
        loop _ _ [] = ([], True)
        loop n c (y : ys) = 
            if n `rem` y /= 0
                then ([], False)
                else loop n c ys
            