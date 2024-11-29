module Day1 where

import Data.Char (digitToInt, isDigit)
import Debug.Trace

-- For each line grab the first and last character
solve1 :: String -> Int
solve1 input = sum $ map getLineValue $ lines input
  where
    getLineValue line =
      let digits = filter isDigit line 
          result = read [head digits, last digits] :: Int
      in trace ("Digits: " ++ show result) result

-- Now we want to match with chars too

solve2 :: String -> Int
solve2 input = sum $ map getLineValue2 $ lines input
 where 
    getLineValue2 line =
        10

main :: IO ()
main = do
  contents <- readFile "day1.txt"
  print $ solve1 contents
  print $ solve2 contents
