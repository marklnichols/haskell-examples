module Main where

import Fibonacci
import Primes
import ProjectEuler.Problem5
import System.Time.Extra

main :: IO ()
main = do
    putStrLn "Some prime numbers:"
    let ps = take 20 primes
    print ps

    putStrLn "Some Fibonacci numbers:" 
    let fs = take 20 fibs
    print fs

    putStrLn "Running current Project Euler problem: #5..."
    (sec, ans) <- duration $
        return $ smallestDivAll 20
    putStrLn $ "Answer: " ++ show ans
    putStrLn $ "Total time: " ++ showDuration sec ++ " seconds"
    return ()
