module KlasifikasiKomputer where
    -- Klasifikasi Komputer           klasifikasi(c,g,h)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    klasifikasi :: Int -> Int -> Int -> Int
    {-Menentukan klasifikasi komputer berdasarkan
    kemampuan CPU, GPU dan hardisk-}

    -- Realisasi
    klasifikasi c g h
        | c < 2 || g < 2 || h < 2 = 1
        | c < 5 || g < 5 = 2
        | c <= 7 && g <= 7 && h <= 7 = 3
        | c <= 7 || g <= 7 || h <= 7 = 4
        | otherwise = 5

    -- Contoh Aplikasi 
    -- klasifikasi 8 9 4 

        