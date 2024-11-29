data TisAnInteger
  = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn y) = x == y

data Trivial
  = Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True

data TwoIntegers
  = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two x y) (Two a b) = x == a && y == b

data Pair a
  = Pair a a

instance (Eq a) => Eq (Pair a) where
  (==) (Pair x y) (Pair a b) = x == a && y == b

data Tuple a b
  = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple a b) = x == a && y == b

data Which a
  = ThisOne a
  | ThatOne a

instance (Eq a) => Eq (Which a) where
  (==) (ThisOne a) (ThisOne b) = a == b
  (==) (ThisOne a) (ThatOne b) = False
  (==) (ThatOne a) (ThatOne b) = a == b
  (==) (ThatOne a) (ThisOne b) = False

data EitherOr a b
  = Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello b) = a == b
  (==) (Hello a) (Goodbye b) = False
  (==) (Goodbye a) (Hello b) = False
  (==) (Goodbye a) `(Goodbye b) = a == b
