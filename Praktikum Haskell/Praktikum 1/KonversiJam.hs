module KonversiJam where
    -- Konversi Jam           konversiJam(j,m,d)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    konversiJam :: Int -> Int -> Int -> (Bool, Int, Int, Int)
    {-Konversikan jam John yang berbeda 7 jam lebih lambat,
    figure out apakah John terlambat mengucapkan ulang tahun-}

    -- Realisasi
    konversiJam j m d 
        | j < 7 = konversiJam (j+24) m d -- rekurens
        | j < 24 && j >= 7 = (False, j-7, m, d) -- basis
        | otherwise = (True, j-7, m, d)

    -- Contoh Aplikasi
    -- konversiJan 06 00 00