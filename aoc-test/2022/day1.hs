module Day1 where

import Data.Char (digitToInt, isDigit)
import Debug.Trace
import Data.List.Split

-- For each line grab the first and last character
solve1 :: String -> Int
solve1 input = maximum $ map getElfPacks $ splitOn "\n\n" input
  where 
    getElfPacks line =
      0

-- Now we want to match with chars too

solve2 :: String -> Int
solve2 input = 0

main :: IO ()
main = do
  contents <- readFile "day1.txt"
  print $ solve1 contents
  print $ solve2 contents
