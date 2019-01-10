ackermann :: Integer -> Integer -> Integer
ackermann m n | m < 0 || n < 0 = error "only positive arguments allowed"
ackermann 0 n | n >= 0 = n + 1
ackermann m 0 | m > 0 = ackermann (m - 1) 1
ackermann m n | m > 0 && n > 0 = ackermann (m - 1) (ackermann m (n - 1))

--Task 2
data Nat = Zero | Succ Nat deriving (Show, Eq)
add :: Nat -> Nat -> Nat
add Zero m = m
add (Succ n) m = Succ (add n m)
mult :: Nat -> Nat -> Nat
mult Zero _ = Zero
mult (Succ n) m = add (mult n m) m

--Task 3
find :: Eq a => a -> [a] -> [Int]
find x xs =  map fst $  filter (\(a,b) -> x == b) $ zip [0..] xs

--Task 4
data NumChar = Num Int | Letter Char
type NumChar' = Either Int Char

test :: NumChar'
test = Left 3
test' :: NumChar'
test' = Right 'a'