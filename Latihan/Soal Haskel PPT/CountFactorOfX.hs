
-- Definisi dan Spesifikasi
countFactorOfX :: Int -> [Int] -> Int
{- countFactorOfX n l mengembalikan banyaknya kemunculan
bilangan yang merupakan faktor dari n pada l -}

-- Realisasi
countFactorOfX n l
    | null l = 0                                        -- basis
    | head l `mod` n == 0 = 1 + countFactorOfX n (tail l) --rekurens
    | otherwise = 0 + countFactorOfX n (tail l)           --rekurens

-- Contoh Aplikasi
-- countFactorOfX 5 [5,10,11]
-- Hasil: 2