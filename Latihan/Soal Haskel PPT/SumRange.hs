-- SumOfDigits           sumOfDigits(n)

-- Identitas
-- Nama     : Alisha Listya Wardhani
-- NIM      : 16521209
-- Kelas    : 02

-- Definisi dan Spesifikasi
sumRange :: (Int, Int) -> Int 
{-sumRange merupakan fungsi yang menerima masukan 2 bilangan
integer, misalnya a dan b yang menyatakan rentang bilangan dengan
syarat: a <= b; a dan b bilangan positif, dan menghasilkan
penjumlahan semua bilangan dari a s.d. b.-}

-- Realisasi
sumRange(a,b)
    | a > b = 0                         -- basis
    | otherwise = sumRange(a+1,b) + a   -- rekurens

-- Contoh Aplikasi
-- sumRange(2,4)
-- Hasil : 9
