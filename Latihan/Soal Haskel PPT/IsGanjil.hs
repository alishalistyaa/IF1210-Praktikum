-- Memeriksa integer ganjil             isGanjil(n)
-- Identitas
-- Nama     : Alisha Listya Wardhani
-- NIM      : 16521209
-- Kelas    : 02

-- Definisi dan Spesifikasi
isGanjil :: Int -> Bool
{-Fungsi isGanjil merupakan predikat untuk memeriksa apakah
sebuah bilangan integer (>=0) merupakan bilangan ganjil.
Contohnya jika diberi n = 2 maka fungsi mengeluarkan outfut False.-}

-- Realisasi
isGanjil n
    | n <= 0 = False                -- basis jika even
    | n > 1 = isGanjil (n-2)    -- rekursif
    | otherwise =  True             -- basis jika odd

-- Contoh Aplikasi
-- isGanjil 4
-- Hasil: False

