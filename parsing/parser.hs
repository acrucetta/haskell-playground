import Text.ParserCombinators.ReadP
import Control.Monad (void)
import Data.Char (isDigit, isSpace)
import Control.Applicative

isVowel :: Char -> Bool
isVowel char =
    any (char ==) "aouei"

digit :: ReadP Char
digit =
    satisfy (\char -> char >= '0' && char <= '9')

vowel :: ReadP Char
vowel = 
    satisfy isVowel

atLeastOneVowel :: ReadP [Char]
atLeastOneVowel =
    many1 vowel

airport :: ReadP String
airport = do
    code <- many1 (satisfy (\char -> char >= 'A' && char <= 'Z'))
    satisfy (== ' ')
    return code

numbers :: Int -> ReadP Int
numbers d =
    fmap read (count d digit)

-- Parse this: .234.....  22-4
parseRange :: ReadP (Int, Int)
parseRange = do
    beforeSpace <- munch (not . isSpace) 
    void $ many1 (satisfy isSpace)
    start <- numbers 1 <|> numbers 2
    satisfy (== '-')
    end <- numbers 1
    return (start,end)
