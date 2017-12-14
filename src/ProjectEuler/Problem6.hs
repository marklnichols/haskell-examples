module ProjectEuler.Problem6 
    (diffSumsSquares) where

{-
The sum of the squares of the first ten natural numbers is,
1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,
(1 + 2 + ... + 10)^2 = 55^2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square 
of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the 
square of the sum.
-}

{- Solution:
    ghci>diffSumsSquares 100
    25164150
-}

diffSumsSquares :: Integer -> Integer
diffSumsSquares count = squareSum count - sumSquares count

squareSum :: Integer -> Integer
squareSum count = 
    let ns = [1, 2 .. count]
    in square $ sum ns 

sumSquares :: Integer -> Integer
sumSquares count = 
    let ns = [1, 2 .. count]
    in sum $ map square ns

-- The just avoids distracting type hints in the above code    
square :: Integer -> Integer
square n = n * n 