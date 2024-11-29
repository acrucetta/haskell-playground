
import Data.List

data Person = Person Bool deriving Show

printPerson :: Person -> IO()
printPerson person = putStrLn (show person)

data Mood = Blah | Woot deriving (Show, Eq)
settleDown x = if x == Woot then Blah else x

type Subject = String
type Verb = String
type Object = String

data Sentence = Sentence Subject Verb Object deriving (Eq, Show)
s1 = Sentence "dogs" "drool" "banana" 

data Rocks = Rocks String deriving (Eq, Show, Ord)
data Yeah = Yeah Bool deriving (Eq, Show, Ord)
data Papu = Papu Rocks Yeah deriving (Eq, Show, Ord)

i :: Num a => a
i = 1

f :: Fractional a => a
f = 1.0

f2 :: RealFrac a => a
f2 = 1.0

myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

jung :: [Int] -> Int
jung xs = head (sort xs)

jung2 :: Ord a => [a] -> a 
jung2 xs = head (sort xs)
