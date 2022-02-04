import Data.List
import System.IO

-- DATATYPE
-- Int min-2^63 max2^63
-- Integer (as big as it is)
-- Double (precision up to 11 points)
-- Bool True False
-- Char
-- Tuple

-- :t to check how things work

-- HOW TO ADD COMMENTS
-- Comments 
{- Multiline 
comments -}

-- MATH FUNCTIONS
sumOfNums = sum[1..1000]
addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

modEx = mod 5 4
modEx2 = 5 `mod` 4
negNumEx = 5 + (-4)

num9 = 9 :: Int
sqrtOf9 = sqrt(fromIntegral num9)

-- IMPORTANT MATH FUNCTIONS
piVal = pi
ePow9 = exp 9
logOf9 = log 9 
squared9 = 9**2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- LISTS --
primeNumbers = [3,5,7,11]

-- Adding and making Lists
morePrime = primeNumbers ++ [13,15,17]
-- favNums = 2 : 7 : 21 : 66 :[]
multList = [[3,5,7],[11,13,15]]
morePrime2 = 2 : morePrime

-- Length, Reverse, and checking if list is empty
lenPrime = length morePrime2
revPrime = reverse morePrime2
isListEmpty = null morePrime2

-- Check if a value is in a list
is7inlist = 7 `elem` morePrime2

-- Check max min in list
maxPrime = maximum morePrime2
minPrime = minimum morePrime2

-- Output list indexing
secondPrime = morePrime2 !! 1

-- Output the first and last object in list
firstPrime = head morePrime2
lastPrime = last morePrime2

-- output everything in the list EXCEPT the last entity
primeInit = init morePrime2 

-- output first 3 objects
first2Primes = take 3 morePrime2

-- removing object in lists
removedPrimes = drop 3 morePrime2

newList = [2,3,5]
prodList = product newList --multiply all numbers in list
sumList = sum newList -- summing all numbers in list

-- Generate a list
zeroToTen = [0..10]
evenList = [2,4..20]
letterList = ['A','C'..'Z']
infinPow10 = [10,20..]
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycleList = take 10 (cycle [1,2,3,4,5])

-- LIST OPERATOR
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x*3 | x <- [1..10], x*3 <= 50]
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 ==0]
sortedList = sort [9,1,8,3,2,1,3]
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
listBiggerThan5 = filter (>5) morePrime
evenupto28 = takeWhile (<= 20) [2,4..]
multoflistright = foldr (-) 1 [2,3,4,5]
multoflistleft = foldl (-) 1 [2,3,4,5]
pow3List = [3^n |n <- [1..10]]
multTable =[[x*y | y <- [1..10]] | x <- [1..10]]

-- TUPLES
-- In a list, it has to be the sam dataType, in a tuple it doesnt have to
randTuple = (1, "Random Tuple")
bobSmith = ("Bob Smith", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith

--Combining List into Tuples pairs
names =["Alisha", "Barru", "Nayla"]
pet = ["Koi", "Kokomi","Areng"]
namesNpets = zip names pet