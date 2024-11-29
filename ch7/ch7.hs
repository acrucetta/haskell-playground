functionC x y = if (x > y) then x else y

functionD x y = 
    case x>y of
    True -> x
    False -> y

functionE x y =
    case res of 
        True -> "yes"
        False -> "no"
    where res = x > y

ifEvenAdd2 n = if even n then (n+2) else n
ifEvenAdd2B n = 
    case even n of 
        True -> (n+2)
        False -> n

nums x =
    case compare x 0 of
        LT -> -1 
        GT -> 1
        EQ -> 0

dodgy x y = x + y * 10
oneIsOne = dodgy 1
oneIsTwo = (flip dodgy) 2

avgGrade :: (Fractional a, Ord a) => a -> Char 
avgGrade x
 |y>=0.9 ='A' 
 |y>=0.8 ='B' 
 |y>=0.7 ='C' 
 |y >= 0.59 = 'D' 
 |otherwise = 'F'
 where y = x / 100

pal xs
 | xs == reverse xs = True 
 | otherwise = False

numbers x
 | x < 0 = -1
 |x==0 =0 
 |x>0 =1

tensDigit :: Integral a => a -> a 
tensDigit x = d
 where (_,d) = x `divMod` 10

hundredsDigit :: Integral a => a -> a 
hundredsDigit x = d
 where (_,d) = x `divMod` 10

foldBool3 :: a -> a -> Bool -> a 
foldBool3 x y True = x 
foldBool3 x y False = y

foldBool2 :: a -> a -> Bool -> a 
foldBool2 x y bool = case bool of 
    True -> x
    False -> y

g :: (a -> b) -> (a, c) -> (b, c)
g . f (a, b) = g (f (a,b))
