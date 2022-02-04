-- HTIUNGLAH NILAI TENGAH    
-- nilaiTengah (x,y,z)

-- Definisi dan Spesifikasi 
nilaiTengah :: Int -> Int -> Int -> Int
    {- nilaiTengah (x,y,z) mengembalikan sebuah integer yang merupakan
    salah satu dari ke-3 nilai tersebut yang jika diurukan berasa ditengah.
    Hal tersebut dapat dicapai jika fungsi nilaiTengah menerima masukan
    tiga buah integer yang berlainan nilainya yang diurutkan bisa acak. -}

-- Realisasi

-- Membuat fungsi max3 yang menyatakan apakah bilangan tersebut max
max3 :: Int -> Int -> Int -> Bool
max3 a b c
    | (a > b) && (a > c) = True
    | otherwise = False 

-- Membuat fungsi min3 yang menyatakan apakah bilangan tersebut min
min3 :: Int -> Int -> Int -> Bool
min3 a b c 
    | (a < b) && (a < c) = True 
    | otherwise = False


nilaiTengah x y z
    | min3 x y z && max3 y x z = z
    | min3 y x z && max3 z x y = x
    | otherwise = y

-- Contoh Aplikasi
-- nilaiTengah 23 6 54 