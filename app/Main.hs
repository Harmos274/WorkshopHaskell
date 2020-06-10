module Main where

import FizzBuzz

main :: IO ()
main = mapM_ putStrLn $ fizzbuzz $ take 10 posReal