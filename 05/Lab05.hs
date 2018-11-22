import Test.QuickCheck

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = if x then True else myOr xs

prop_myOr xs = myOr xs == or xs


-- Task 3

