import Test.QuickCheck
--Task 1

data Nat = Zero | Succ Nat deriving (Show)

one = Succ Zero
four = Succ $ Succ $ Succ $ Succ Zero

intToNat :: (Integral a) => a -> Nat
intToNat 0 = Zero
intToNat n = Succ (intToNat (n-1))

natToInt :: Nat -> Int
natToInt Zero = 0
natToInt (Succ a) = 1 + natToInt a

--Task2 
--CONTRACT
add :: Nat -> Nat -> Nat

--
add Zero n = n
add (Succ m) n = Succ (add m n)

mult :: Nat -> Nat -> Nat

mult Zero _ = Zero
mult (Succ a)  b = add b (mult a b) 

prop_mult_test = do
    forAll (choose(0,100) :: Gen Int) $ \n ->
        forAll (choose(0,100)::Gen Int) $ \m ->
        natToInt (mult (intToNat n) (intToNat m)) == m * n


--Task 3
data Bdd = Leaf Bool | Node Bdd Bdd deriving (Show, Read, Eq)

--Task 4
task4 = Node (Node (Leaf True) (Leaf False)) (Node (Leaf True) (Leaf False))


--Task 5
eval :: [Bool] -> Bdd -> Bool 
eval xs (Leaf a) = a
eval (x:xs) (Node a b)
            | x = eval xs a
            | otherwise = eval xs b

--Task 6
