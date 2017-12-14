module Misc
    ( square
    , windows ) where

import Control.Applicative
import Data.List
import Data.Traversable (sequenceA)

-- The just avoids distracting type hints in some of the Project Euler problems    
square :: Integer -> Integer
square n = n * n 

-- | Create a list of "Sliding windows" of length n from a list
windows :: Int -> [a] -> [[a]]
windows n = getZipList . sequenceA . map ZipList . take n . tails