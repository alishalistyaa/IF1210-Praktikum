module ListIndex where


-- DEFINISI DAN SPESIFIKASI
listIndex :: [Int] -> (Int->Char) -> [Char]

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty = null

konso :: Char -> [Char] -> [Char]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}
konso e l = e : l

---------------------------------------------
-- Identitas
-- Nama     : Alisha Listya Wardhani
-- NIM      : 16521209
-- Kelas    : 02

-- REALISASI 
listIndex li fungsi =
    if isEmpty li then [] -- Basis 
    else -- Rekurens
        konso (fungsi (head li)) (listIndex (tail li) fungsi)
