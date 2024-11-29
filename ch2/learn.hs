module Learn where

calculateArea w h =
 let area = w * h
     perimeter = 2 * (w+h)
 in "Area: " ++ show area ++ ", Perimeter: " ++ show perimeter

z = 7

x = y ^ 2

waxOn = x * 10
 where x = 10

y = z + 8

triple x = x * 3

