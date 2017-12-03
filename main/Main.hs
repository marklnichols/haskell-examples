module Main where

import Primes
import Fibonacci

main :: IO ()
main = do
    putStrLn "Some prime numbers:"
    let ps = take 20 primes
    print ps

    putStrLn "Some Fibonacci numbers:" 
    let fs = take 20 fibs
    print fs