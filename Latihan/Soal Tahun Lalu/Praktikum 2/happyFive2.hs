-- NAMA : VANIA SALSABILA
-- KELAS : K08
-- NIM : 16521286
module HappyFive where
-- HAPPY FIVE                                               happyFive(l)

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty = null

konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}

-- REALISASI
konso e l = e : l

-- DEFINISI DAN SPESIFIKASI
happyFive :: [Int] -> [Int]
{- Fungsi ini akan membuang setiap angka yang tidak berhubungan dengan 5 atau kelipatan dari 5 dari sebuah list
Angka didalam list hanya bernilai satuan atau puluhan. -}
happyFive l
  | isEmpty l = []
  | mod (head l) 10 == 5 || div (head l) 10 == 5 || mod (head l) 5 == 0 = konso (head l)(happyFive(tail l))
  | otherwise = happyFive (tail l)