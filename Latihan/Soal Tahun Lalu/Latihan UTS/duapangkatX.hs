duapangkatX :: Int -> Int 

duapangkatX x
    | x == 0 = 1
    | otherwise = 2 * (duapangkatX (x-1))