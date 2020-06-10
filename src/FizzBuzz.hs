module FizzBuzz
    ( posReal,
      fizzbuzz
    ) where

data FizzBuzz = Fizz | Buzz | FizzBuzz | Other Integer

instance Show FizzBuzz where
  show Fizz      = "Fizz"
  show Buzz      = "Buzz"
  show FizzBuzz  = "FizzBuzz"
  show (Other a) = show a

posReal :: [Integer]
posReal = [0, 1..]

fizzbuzz :: [Integer] -> [FizzBuzz]
fizzbuzz = map parser

parser :: Integer -> FizzBuzz
parser i | rem i 3 == 0 && rem i 5 == 0 = FizzBuzz
         | rem i 3 == 0                 = Fizz
         | rem i 5 == 0                 = Buzz
         | otherwise                    = Other i