import Prelude hiding (zip)
-- CONTRACT
square :: Int -> Int

-- PURPOSE
-- This function takes an int and returns it's square

-- EXAMPLES
-- square 2 : 4
-- square 5 : 25

-- DEFINITION
square n = n * n

-- TESTS
prob_square n = square n == n^2
