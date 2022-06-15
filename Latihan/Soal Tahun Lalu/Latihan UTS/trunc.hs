
-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}

-- REALISASI
konso e l = [e] ++ l


trunc :: [Int] -> Int -> [Int]
trunc li n
    | isEmpty li = []
    | n == 0 = []
    | otherwise = konso (head li) (trunc (tail li) (n-1))