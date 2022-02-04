module KonversiSuhu where
    -- Mengkonversi Suhu             konversiSuhu(t,k)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Deinisi dan Spesifikasi
    konversiSuhu :: Float -> Char -> Float 
    {-Aplikasi yang digunakan untuk mengkonversi suhu dari satu
    satuan Celcius ke satuan suhu yang lain yaitu F, R atau K-}

    -- Realisasi
    konversiSuhu t k
        | k == 'R' = 4/5 * t
        | k == 'F' = (9/5 * t) + 32
        | otherwise = t + 273.15
    
    -- Contoh Aplikasi
    -- konversiSuhu 25 'R'