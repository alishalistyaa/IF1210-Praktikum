
module ListOfInteger where

elmtKeN :: [Int] -> Int -> Int

elmtKeN l n = if n==1 then head l
else
    elmtKeN (tail l) (n-1)
