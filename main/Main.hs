module Main where

import Fibonacci
import Primes
import ProjectEuler.Problem10
import System.Time.Extra

main :: IO ()
main = do
    putStrLn "Some prime numbers:"
    let ps = take 20 primes
    print ps

    putStrLn "Some Fibonacci numbers:" 
    let fs = take 20 fibs
    print fs

    putStrLn "Running current Project Euler problem: #10..."
    (sec, ans) <- duration $
        return $ sumOfPrimesBelow 2000000
    putStrLn $ "Answer: " ++ show ans
    putStrLn $ "Total time: " ++ showDuration sec ++ " seconds"
    return ()
