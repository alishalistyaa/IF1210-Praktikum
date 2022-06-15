-- SUM INTEGER                 sumInteger(l,f)

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty l = null l

konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}
konso e l = [e] ++ l

---------------------------------------------------------------
-- DEFINISI DAN SPESIFIKASI FUNGSI ANTARA
filterList :: [Int] -> (Int->Bool) -> [Int]
{-Fungsi ini akan melakukan penyaringan terhadap elemen list dan 
menghasilkan list baru dengan elemen yang lolos kriteria filter -}

-- REALISASI
filterList l f
    -- ketika list sudah kosong, maka akan selesai dan mengembalikan list kosong
    | isEmpty l = [] --basis

    -- ketika fungsi merupakan beroutput true, maka akan dimasukkan ke dalam list baru,
    -- kemudian menjalankan fungsi filterList untuk elemen berikutnya
    | f (head l) = konso (head l) (filterList (tail l) f )

    -- ketika fungsi yg dijalankan beroutput false,
    -- menjalankan fungsi filterList untuk elemen berikutnya
    | otherwise = filterList (tail l) f

-- DEFINISI FUNGSI ANTARA
sumList :: [Int] -> Int
{-Fungsi ini akan menjumlahkan elemen-elemen yang ada dalam sebuah list-}
sumList l
    | isEmpty l = 0
    | otherwise = head l + sumList(tail l)
---------------------------------------------------------------

-------FUNGSI SUM INTEGER-------------
-- DEFINISI DAN SPESIFIKASI FUNGSI SUM INTEGER
sumInteger :: Int -> Int -> (Int->Bool) -> Int
{-Fungsi ini akan menjumlahkan semua elemen dalam list yang telah difilter sebelumnya-}
sumInteger m n f
    | n<m = 0
    | isEmpty (filterList [m..n] f) = 0
    | otherwise = sumList (filterList [m..n] f)

-------FUNGSI F PADA SOAL----------
isGenap :: Int -> Bool
-- Mengembalikan true jika x yang genap
isGenap x = even x
-- Dengan ekspresi Lambda (\x -> mod x 2 == 0)

gtThan5 :: Int -> Bool 
-- Mengembalikan true jika x lebih besar dari 5
gtThan5 x = x > 5
-- Dengan ekspresi Lambda (\x -> x > 5)

kondisi1 :: Int -> Bool 
-- Mengembalikan true jika x dapat membagi habis 100
kondisi1 x = mod 100 x == 0
-- Dengan ekspresi Lambda (\x -> mod 100 x == 0)

kondisi2 :: Int -> Bool
-- Mengembalikan true jika x adalah 
-- bilangan genap dan dapat dibagi habis oleh 10 dan jika x adalah
-- bilangan ganjil dan dapat dibagi habis oleh 5.
kondisi2 x = (even x && mod x 10 == 0) || (odd x && mod x 5 == 0)
-- Dengan ekspresi Lambda (\x -> (mod x 2 == 0 && mod x 10 == 0) || (mod x 2 /= 0 && mod x 5 == 0))

kondisi3 :: Int -> Bool 
-- mengembalikan true jika x lebih kecil dari 10 
kondisi3 x = x < 10
-- Dengan ekspresi lambda (\x -> x < 10) 

------- CONTOH APLIKASI ----------
{-
-- KONDISI 1 --
sumInteger 1 100 kondisi1
Hasil                    : 217
Dalam ekspresi lambda    : sumInteger 1 100 (\x -> mod 100 x == 0)

-- KONDISI 2 -- 
sumInteger 1 100 kondisi2
Hasil                   : 1050
Dalam ekspresi lambda   : sumInteger 1 100 (\x -> (even x && mod x 10 == 0) || (odd x && mod x 5 == 0))

-- KONDISI 3 --
sumInteger 25 25 kondisi3
Hasil                   : 0
Dalam ekspresi Lambda   : sumInteger 25 25 (\x -> x<10)      

-}