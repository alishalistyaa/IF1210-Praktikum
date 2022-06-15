-- FILTER LIST                  filterList(l,f)

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}
konso e l = [e] ++ l


-- DEFINISI DAN SPESIFIKASI
filterList :: [Int] -> (Int->Bool) -> [Int]
{-Fungsi ini akan melakukan penyaringan terhadap elemen list dan 
menghasilkan list baru dengan elemen yang lolos kriteria filter -}

-- REALISASI
filterList l f 
    -- ketika list sudah kosong, maka akan selesai dan mengembalikan list kosong
    | isEmpty l = [] --basis

    -- ketika fungsi merupakan beroutput true, maka akan dimasukkan ke dalam list baru,
    -- kemudian menjalankan fungsi filterList untuk elemen berikutnya
    | f (head l) = konso (head l) (filterList (tail l) f )

    -- ketika fungsi yg dijalankan beroutput false,
    -- menjalankan fungsi filterList untuk elemen berikutnya
    | otherwise = filterList (tail l) f

-- FUNGSI PADA SOAL (Jika diperlukan)
isPos :: Int -> Bool
isPos x = x > 0
-- Dengan Lambda : (\x -> x>0)

isNeg :: Int -> Bool 
isNeg x = x < 0
-- Dengan Lambda (\x -> x<0)

isKabisat :: Int -> Bool 
isKabisat x = (mod x 400 == 0) || (mod x 100 /=0) && (mod x 4 == 0)
-- Dengan Lambda (\x -> (mod x 400 == 0) || (mod x 100 /=0) && (mod x 4 == 0))




-- Contoh aplikasi

{- 
-------CONTOH isPos ----------
    filterList [2,4,(-1),9] isPos

    Hasil:                  [2,4,9]
    Dalam ekspresi Lambda : filterList [2,4,(-1),9] (\x -> x>0)

-------CONTOH isNeg ----------
    filterList [2,4,(-1),9] isNeg

    Hasil:                   [(-1)]
    Dalam ekspresi Lambda : filterList [2,4,(-1),9] (\x -> x<0)

-------CONTOH isKabisat ----------
    filterList [1999,2000,2022,2008]

    Hasil:                  [2000,2008]
    Dalam ekspresi Lambda : filterList [1999,2000,2022,2008] (\x -> (mod x 400 == 0) || (mod x 100 /=0) && (mod x 4 == 0))

-}



