{-# LANGUAGE ScopedTypeVariables #-}
import System.Environment
import Control.Monad
import Control.Exception
import System.Exit
import Data.Char

-------------------------
{-
use:
ghc -fforce-recomp -prof -rtsopts --makemean

./mean 2500000 slow +RTS -K1000M -s
    using the mean function
./mean 2500000 fast +RTS -K1000M -s
    using the meanOpt function
-}
-------------------------
mean :: [Integer] -> Integer
mean xs = mysum xs `div` fromIntegral (length xs)
    where
    mysum = helper 0
        where
        helper v [] = v
        helper v (x:xs) = helper (v + x) xs


-------------------------

-------------------------
meanOpt :: [Integer] -> Integer
meanOpt xs = mysum xs 
    where
    mysum = helper 0 0
        where
        helper v l [] = v `div` l
        helper v l (x:xs) = ((helper $! (v + x)) $! (l+1)) xs

-------------------------



--------------------------------------------------
main = do
    (n, yours) <- parseArgs
    let xs = [0 .. n]
    putStrLn $ "Result: " ++ show (if yours then meanOpt xs else mean xs)
    where
    parseArgs :: IO (Integer, Bool)
    parseArgs = handle (\(e :: SomeException) -> print e >> exitFailure) $ do
        args <- getArgs
        when (length args /= 2) $ throwIO $ AssertionFailed "Please supply exactly two arguments"
        let (n : f : _) = args
        when (any (not . isDigit) n) $ throwIO $ AssertionFailed "Please give me a number as first arg"
        when (f /= "fast" && f /= "slow") $ throwIO $ AssertionFailed "Please provide either \"slow\" or \"fast\" as second arg"
        return (read n, if f == "fast" then True else False)
