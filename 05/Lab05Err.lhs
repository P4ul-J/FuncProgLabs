> import Test.QuickCheck

Functional programming is cool: http://goo.gl/KlM9v

CONTRACT

> myFindIndex :: Eq a => a -> [a] -> Int

PURPOSE
Returns first position (starting from 0) where x occurs in ys.

EXAMPLES
myFindIndex 1 [0..] : 1
myFindIndex 3 [] : -1
myFindIndex 'T' "Tests Test" : 0

DEFINITION

> myFindIndex x ys = helper (zip [0..] ys)
>   where helper [] = -1
>         helper ((i,y):zs) | x == y = i
>                           | otherwise = helper zs

Tests

> prop_myFindIndex x = myFindIndex x [x] == 0 