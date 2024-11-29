module Arith4 where
  -- id :: a -> a
  -- id x = x

roundTrip :: (Show a, Read a) => a -> a 
roundTrip a = read (show a)

roundTrip2 :: (Show a, Read a) => a -> a 
roundTrip2 a = (read . show) a

roundTrip3 :: (Show a, Read b) => a -> b 
roundTrip3 = read . show

main = do
    print (roundTrip 4) 
    print (id 4)
    print (roundTrip2 4)