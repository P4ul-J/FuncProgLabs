-- Task 1
{-
let [x] = 1 : [] in x
let [x] = "1" in x
let (x:xs) = [1..10] in (x:xs)
-}
-- Task 2
myHead :: [a] -> a
myHead (x:xs) = x

myData :: [Int]
myData = read "[1,2,3]" :: [Int]

apply_f_twice :: (Int -> Int) -> Int -> Int
apply_f_twice f x = f (f x)

--Task 3
myAnd :: Bool -> Bool -> Bool
myAnd a b = a && b
--a
myAndP :: Bool -> Bool -> Bool
myAndP True True = True
myAndP _ _ = False
--b
multComplex :: (Floating a) => (a,a) -> (a,a) -> (a,a)
multComplex (a, b) (c, d) = (a*c - b*d, b*c + a*d)

--Task 4

isCapital :: Char -> Bool
isCapital = undefined
average :: (Fractional a) => [a] -> a
average = undefined
getMax :: (Ord a) => [a] -> a
getMax = undefined
det :: (Num a) => [[a]] -> a
det = undefined
