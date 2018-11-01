qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where
    smaller = [a | a <- xs, a <= x]
    larger = [a | a <- xs, a > x]

qsort2 [] = []
qsort2 (x:xs) = qsort2 smaller ++ [x] ++ qsort2 larger
  where
    smaller = [a | a <- xs, a < x]
    larger = [a | a <- xs, a > x]
