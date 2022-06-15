{-# LANGUAGE BlockArguments #-}
module HitungBensin where
    -- Klasifikasi Komputer           klasifikasi(c,g,h)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    hitungBensin :: Int -> Int -> Int
    
    {-Menentukan jumlah bensin yang terkuras
    jika bilangan genap maka bergerak ke x/1
    jika bilangan ganjil bergerak ke 3x+1.
    Akan berhento jika mencapai 1-}

    hitungBensin a b
            | a == b = 0
            | even a = 1 + hitungBensin (div a 2) b
            | odd a = 1 + hitungBensin ((3*a)+1) b
            | otherwise = 0