module SumKelipatanX where
    -- SumKelipatanX            sumKelipatanX(m,n,x)
   
    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    sumKelipatanX :: Int -> Int -> Int -> Int 
    {- sumKelipatanX yang menerima masukan int positif 
    serta sebuah integer positif lain, dan menghasilkan total
    bilangan kelipatan x diantara m dan n-}
    
    -- Realisasi
    sumKelipatanX m n x
        | m > n = 0
        | mod m x == 0 = m + sumKelipatanX (m+1) n x
        | otherwise = sumKelipatanX (m+1) n x

    -- Contoh Aplikasi
    -- sumKelipatanX 5 14 3