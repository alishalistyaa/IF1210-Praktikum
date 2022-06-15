module DeretAritmatika where
    -- DeretAritmatika            deretAritmatika(n,a,b)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    deretAritmatika :: Int ->Int -> Int -> Float
    {-fungsi deretAritmatika yang menerima masukkan 3 nilai integer, 
    yaitu n, a, dan b. Parameter a merupakan suku pertama dari suatu barisan aritmatika yang memiliki beda b. 
    Realisasi fungsi deretAritmatika akan menghasilkan jumlah n-}

    -- Realisasi
    deretAritmatika n a b  = fromIntegral (n*(2*a+ (n-1)*b)) / 2

    -- Contoh Aplikasi 
    -- deretAritmatika 2 2 4