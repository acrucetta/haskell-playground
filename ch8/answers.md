Recursion:

1. Write out the steps for reducing dividedBy 15 2 to its final
answer according to the Haskell code.

```haskell
dividedBy :: Integral a => a -> a -> (a, a)
dividedBy num denom = go num denom 0
    where go n d count
    | n < d = (count, n)
    | otherwise = go (n - d) d (count + 1)
```

dividedBy 15 2
  15 < 2
  go (13) 2 (0+1)
    go (11) 2 (2)
    go (9) 2 (3)
    go (7) 2 (4)
    go (5) 2 (5)
    go (3) 2 (6)
    go (1) 2 (7) # 1 < d => (7,1)

2. Write a function that recursively sums all numbers from
1 to n, nbeingtheargument. Sothatifnwas5,you’dadd1+2+3+4+ 5toget15.
Thetypeshouldbe(Eq a, Num a) => a -> a.

3. Write a function that multiplies two integral
numbers using recursive summation. The type
should be (Integral a) => a -> a -> a.
