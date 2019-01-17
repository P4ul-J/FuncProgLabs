import Debug.Trace

--Task 1

(&.&) :: Bool -> Bool -> Bool 
_ &.& False = False 
a &.& True = a

--Task 2
xs :: [Int]
xs = map (\x -> trace ("x = " ++ show x) x ) (zipWith (+) [0..] $ repeat (-10))
sumTwo :: (Num n, Ord n, Show n) => [n] -> n
sumTwo (a:_:c:_:ds)
        | a + c < 0 = a + c + (trace ("call with " ++ show (a) ++ " + " ++ show(c) ++ " = " ++ " < 0") (sumTwo ds))
        | otherwise = trace (show(a) ++ " + " ++ show (c) ++ " not smaller than 0 anymore") 0

