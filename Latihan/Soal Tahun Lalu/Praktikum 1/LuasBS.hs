module LuasBS where
    -- Menghitung Luas Lingkaran                LuasLingkaran(r)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi 
    luasBS :: Int -> Int 
    -- luasBS s mengembalikan nilai luas bujur sangkar dengan sisi s secara rekursif
    -- Misalnya s diketahuk adalah 12, maka luas bujur sangkarnya 144
    -- prekondisi: s > 0

    -- Realisasi
    luasBS s =
        if s == 1 then 1
        else 2*s - 1 + luasBS (s-1)

    -- Contoh Aplikasi
    -- luasBS 12
    -- Hasil: 144