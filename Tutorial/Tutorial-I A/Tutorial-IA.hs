import Data.List
import System.IO

-- FUNCTIONS
main = do
    putStrLn "Whats your name"
    name <- getLine 
    putStrLn("Hello " ++ name)
