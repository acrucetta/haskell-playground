module WordNumber where
import Data.List (intersperse)
import Data.Char (digitToInt)

digitToWord :: Int -> String 
digitToWord n = case n of 
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    5 -> "five"
    6 -> "six"
    7 -> "seven"
    8 -> "eight"
    9 -> "nine"
    0 -> "zero"
    _ -> "nope"

digits :: Int -> [Int] 
digits = map digitToInt . show

-- 123 -> [1,2,3] -> ["one","two","three"]
wordNumber :: Int -> String 
wordNumber n = concat $ intersperse "-" $ map digitToWord $ digits n