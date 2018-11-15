--Task 2
repeatn :: Int -> [a] -> [a] 
repeatn n xs = [x | x <- xs, i <- [1..n]]

repeatc :: Int -> [a] -> [a] 
repeatc n xs = [x | i <- [1..n], x <- xs]

--Task 3
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime n = factors n == [1,n]

numprimes n = [x | x <-[1..n], prime x]

--Task 4
scalarProd :: [Int] -> [Int] -> Int
scalarProd xs ys = sum [x*y | (x,y) <- zip xs ys]

--Task 5
nestedRemoveEven :: [[Int]] -> [[Int]]
nestedRemoveEven  xss = [ removeEven xs | xs <- xss]
    where removeEven xs = [x | x <- xs, x `mod`2 == 1 ]

