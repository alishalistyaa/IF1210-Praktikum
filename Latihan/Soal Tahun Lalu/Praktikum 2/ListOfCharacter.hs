module ListOfCharacter where

konso :: Char -> [Char] -> [Char]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}

-- REALISASI
konso e l = [e] ++ l

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Char] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty l = null l

-- DEFINISI DAN SPESIFIKASI
konkat:: [Char] -> [Char] -> [Char]
-- konkat(L1,L2) menghasilkan konkatenasi l1 dan l2, -- dengan list l2 "sesudah" list l1
-- REALISASI 
konkat l1 l2 =
    if isEmpty l1 then l2 -- Basis 
    else -- Rekurens 
    konso (head l1) (konkat (tail l1) l2)
