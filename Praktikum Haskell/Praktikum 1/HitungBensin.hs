module HitungBensin where
    -- Klasifikasi Komputer           klasifikasi(c,g,h)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    hitungBensin :: Int -> Int -> Int
    hitungPosisi :: Int -> Int
    {-Menentukan jumlah bensin yang terkuras
    jika bilangan genap maka bergerak ke x/1
    jika bilangan ganjil bergerak ke 3x+1.
    Akan berhento jika mencapai 1-}

    hitungBensin a b =
        if a> b then 0
        else hitungPosisi a +  hitungBensin (a+1) b

    hitungPosisi a
        | a == 1 = 0
        | even a = 1 + hitungPosisi (div a 2)
        | odd a = 1 + hitungPosisi ((3*a)+1)
        | otherwise = 0