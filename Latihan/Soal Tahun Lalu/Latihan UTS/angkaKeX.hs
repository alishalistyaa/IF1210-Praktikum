

angkakeX :: Int -> Int 
 
angkakeX n 
    | n == 1 = 5
    | otherwise = 2 + (angkakeX (n-1))