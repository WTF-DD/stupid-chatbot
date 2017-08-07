module Main where

import System.Console.Readline (readline)
import Test.QuickCheck (generate, elements)

main :: IO ()
main = do
  maybeLine <- readline "> "
  case maybeLine of
    Just _ -> randomAnswer >>= putStrLn >> main
    _ -> putStrLn "Goodbye sucker !"

randomAnswer :: IO String
randomAnswer = generate $ elements possibleAnswer

possibleAnswer :: [String]
possibleAnswer = [ "Seriously, don't"
                 , "Leave me alone !"
                 , "Have you considered not using a chatbot ? ¯\\_(ツ)_/¯"
                 ]
