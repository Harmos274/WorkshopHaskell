module FizzBuzz
    ( posReal,
      fizzbuzz
    ) where

posReal :: [Integer]
posReal = [0, 1..]

fizzbuzz :: [Integer] -> [String]
fizzbuzz = map parser

parser :: Integer -> String
parser i | rem i 3 == 0 && rem i 5 == 0 = "FizzBuzz"
         | rem i 3 == 0                 = "Fizz"
         | rem i 5 == 0                 = "Buzz"
         | otherwise                    = show i