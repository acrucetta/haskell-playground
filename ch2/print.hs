module Print3 where

myGreeting :: String
myGreeting = "hello" ++ " world"

area d = pi * (r * r)
  where
    r = d / 2

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where
    secondGreeting =
      (++) "hello" ((++) " " "world")


