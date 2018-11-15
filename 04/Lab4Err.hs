add :: Int -> (Int -> Int) 
add = \x -> (\y -> x + y)

myLength :: [a] -> Int 
myLength xs = sum [1 | x <- xs]

odds :: Int -> [Int] 
odds n = [i | i <- [1..n], i `mod` 2 == 1]

quadruple :: Int -> Int 
quadruple x = (mult 2 x) * 2 
    where mult 0 _ = 0 
          mult n m = m + mult (n-1) m