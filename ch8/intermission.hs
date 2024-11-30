applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n-1) f $ b

incTimes' :: (Eq a, Num a) => a -> a -> a
incTimes' times n = applyTimes times (+1) n

fibonacci :: Integral a => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

type Numerator = Integer
type Denominator = Integer
type Quotient = Integer

dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
 where go n d count
        | n < d = (count, n)
        | otherwise = go (n - d) d (count + 1)

recursiveSum :: (Eq a, Num a) => a -> a
recursiveSum n = go n 0
 where go n sum
        | n == 0 = (sum)
        | otherwise = go (n-1) (sum+n)


recursiveProduct :: (Integral a) => a -> a -> a
recursiveProduct a b = go a b 0
 where go a b product
        | b == 0 = product
        | otherwise = go a (b-1) (product+a)

mc91 :: (Integral n) => n -> n
mc91 n = go n
 where go n
        | n>100 = n-10
        | n<=100 = go $ go (n+11)