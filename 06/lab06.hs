foo :: (a -> Bool) -> [a] -> Bool
foo _ [] = False
foo p (x:xs) = p x || foo p xs


--Task 2
-- any :: (a -> Bool) -> t a -> Bool
-- (++"e") :: String -> String

-- map :: (a->b) -> [a] -> [b]
-- all(/=) :: t a -> Bool

--Task 3
task3 = (map (\y -> y^2). filter even) [1..]

--Task 4
--a 
foo2 xs = map (+2) xs

--b
--bar xs = sum (map (\_ -> 1) filter (>7) (filter (<13) xs )) 
-- How many elements in intervall (7,13)

--c
-- adds to every element a of [[a]] +1


--Task 5
--a

task5a = foldl (-) 0 [1, 2, 3]
{-
= foldl (-) 0 (1:(2:(3:[])))
= foldl (-) (0 - 1) (2:(3:[])))
= foldl (-) ((0-1)-2) (3:[])
= foldl (-) (((0-1)-2)-3) []
= (((0-1)-2)-3)
= ((-1-2)-3)
= (-3-3)
= -6
-}

--b

task5b = foldr (-) 0 [1,2,3]
{-


-}

--Task 6
foo3 xs = map (+1) $ map(+1) xs

bar2 xs = sum $ map (\_ -> 1) $ filter (>7) $ filter (<13) xs

baz2 xss = map ( map (+1)) $ xss

--Task 7
myMap :: (a->b) -> [a] -> [b]
myMap f xs = foldr (\x xs -> (f x) : xs) [] xs