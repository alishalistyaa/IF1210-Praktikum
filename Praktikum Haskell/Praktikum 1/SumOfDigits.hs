module SumOfDigits where
    -- SumOfDigits           sumOfDigits(n)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Deinisi dan Spesifikasi
    sumOfDigits :: Int -> Int 
    -- sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
    -- prekondisi n >= 0    

    -- Realisasi
    sumOfDigits n
        | n < 10 = n
        | otherwise = mod n 10 + sumOfDigits(div n 10)
    
    -- Contoh Aplikasi 
    -- sumOfDigits 1234