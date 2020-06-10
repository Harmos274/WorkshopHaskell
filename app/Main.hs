module Main where

import FizzBuzz

main :: IO ()
main = mapM_ print $ fizzbuzz $ take 10 posReal