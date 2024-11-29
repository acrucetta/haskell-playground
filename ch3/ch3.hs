module Ch3 where

thirdLetter :: [Char] -> Char
thirdLetter x = (!!) x 2

letterIndex :: Int -> Char
letterIndex = (!!) str
 where str = "Curry is awesome"


