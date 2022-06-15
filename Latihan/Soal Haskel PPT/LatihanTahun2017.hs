

isKabisat :: Int -> Bool
isKabisat y = mod y 400 == 0 || mod y 100 /= 0 && y `mod` 4 == 0

hitungKabisat :: Int -> Int -> Int
hitungKabisat x z
    | x > z = 0
    | isKabisat x = hitungKabisat (x+1) z + 1
    | otherwise = hitungKabisat (x+1) z + 0

