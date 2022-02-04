import Data.List
import System.IO

-- FUNCTIONS
addMe :: Int -> Int -> Int 

-- funcName param1 param2 = operations (returned value)
-- functions cant begin with an uppercase letter
addMe x y = x + y

-- functions can be made without stating :t
sumMe x y = x+y

addTuples :: (Int,Int) -> (Int,Int) -> (Int,Int)
addTuples (x,y) (x2,y2) = (x+x2, y+y2)

whatAge :: Int -> String 
whatAge 16 = "You can drive"
whatAge 18 = "You can Vote"
whatAge _ = "Nothing Important"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n* factorial(n-1)

prodNnumber = product [1..10]

-- conditionals
isOdd :: Int -> Bool
isOdd n
    | n `mod` 2 == 0 = False 
    | otherwise = True 
isEven n = n `mod` 2 == 0

-- conditionals and
whatGrade :: Int -> String
whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary"
    | otherwise = "not in school"

-- where : biar gausah nulis satu satu
batAvgRating :: Double -> Double -> String 
batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Batting"
    | avg <= 0.250 = "Average"
    | avg <= 0.280 = "Good"
    | otherwise = "mvp"
    where avg = hits / atBats

-- List Functions / access items in list
getListItems :: [Int] -> String 
getListItems [] = "Your List is empty"
getListItems(x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The 1st item is " ++ show x ++ " and the rest are " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]

-- map buat list
times4 :: Int -> Int 
times4 x = x*4
listTimes4 = map times4 [1,2,3,4,5]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

areStringEq :: [Char] -> [Char] -> Bool 
areStringEq [] [] = True
areStringEq (x:xs) (y:ys) = x == y && areStringEq xs ys
areStringEq _ _ = False  

doMult :: (Int -> Int) -> Int 
doMult func = func 3