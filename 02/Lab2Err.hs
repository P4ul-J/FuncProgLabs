succ :: Int -> Int
succ x = x + 1

pred :: Int -> Int
pred x = - 1 + x

tupleup :: Int -> (Int, (Int, Int))
tupleup i = (i, (i, i))

myNameIs :: [Char] -> Bool
myNameIs str = str == "Nobody"

newLine :: String -> String
newLine str = str ++ "\n"
--aufgabe 3
foo :: Char -> String
foo x = [x]
