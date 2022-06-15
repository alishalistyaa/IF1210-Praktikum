module Kuadran where
    -- FUNGSI KUADRAN               kuadran(x,y)

    -- Definisi dan Spesifikasi
    kuadran :: Int -> Int -> String
    {-Fungsi kuadran yang menerima masukan dua bilangan int
    yang merupakan titik koordinat x dan y. Fungsi akan
    menghasilkan kuadran dari titik tersebut.-}

    -- Realisasi
    kuadran x y 
        | x >= 0 && y >= 0 = "Kuadran I"
        | x < 0 && y >= 0 = "Kuadran II"
        | x < 0 && y < 0 = "Kuadran III"
        | otherwise = "Kuadran IV" 

    -- Contoh Aplikasi
    -- kuadran 24 8 
