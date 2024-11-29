
addOneIfOdd = \n -> case odd n of 
 True -> n
 False -> n + 1

addFive = \x -> \y -> (if x > y then y else x) + 5
