module UkuranBaju where
    -- Mengukur ukuran baji             konversiSuhu(t,b)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Deinisi dan Spesifikasi
    ukuranBaju :: Int -> Int -> Int
    {-ukuranBaju yang menerima masukan 2 buah integer positif,
    misalnya t (tinggi) dan b (berat badan) untuk menghasilkan 
    ukuran baju dalam kode.-}

    -- Realisasi
    ukuranBaju t b 
        | t <= 150 = 1
        | t > 170 && b > 60 && b <= 80 = 3
        | t > 150 && t <= 170 && b <= 80 = 2
        | t > 150 && t <= 170 && b > 80 = 3
        | t > 170 && b <= 60 = 2
        | otherwise = 4