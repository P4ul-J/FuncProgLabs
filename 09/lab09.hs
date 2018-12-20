--Tasks1
--a) -> [Char] por String
--b) Num t => ([t], ())
--c) [a]
--d)  [String]

--Task2

import Data.List
isSubsetOf :: Ord a => [a] -> [a] -> Bool
xs `isSubsetOf` ys = sort (nub xs) `helper` sort (nub ys)
    where
    [] `helper` _ = True
    _ `helper` [] = False
    (x:xs) `helper` (y:ys)  | x == y = xs `isSubsetOf` ys
                            | x > y = (x:xs) `isSubsetOf` ys
                            | otherwise = False

--Task 6
data JSON = JSEmpty | JSString String| JSNumber Double | JSBool Bool| JSArray [JSON] | JSObject [(String, JSON)]

--Task 7
insert :: x -> Set x -> Set x

member :: x -> Set x -> Bool
member _ Leaf = False
member e xs
        | elem xs == e = True
        | elem xs > e = member e (left xs)
        |otherwise = member e (right xs)