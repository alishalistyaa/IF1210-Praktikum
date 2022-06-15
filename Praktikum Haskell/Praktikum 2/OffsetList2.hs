


-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Float] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty = null

konso :: Float -> [Float] -> [Float]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}
konso e l = e : l

--------------------------------------------------
-------------SOAL 1------------------
-- REALISASI 

-- DEFINSII DAN SPESIFIKASI
offsetList :: (Float -> Float) -> (Float -> Float) -> Float -> Float -> [Float]
{- offsetList li offset dengan li adalah list float dan
-- offset adalah sebuah fungsi dengan definisi:
-- offset f melakukan offset terhadap nilai x
-- offsetList menghasilkan sebuah list float dengan semua elemen
-- sudah di-offset sesuai fungsi offset -}

offsetList f g a b
    | b < a = []
    | otherwise = konso (f a) (offsetList f g (g a) b)

-------------SOAL 2------------------
-- CONTOH APLIKASI
-- offsetList id1yah p2 1.2 7.1
-- Hasil [1.2,3.2,5.2]

-- offsetList id2yah p05 (-1.0) 1.0
-- Hasil [-999.0,-999.0,3.2,3.7,4.2]

-------------SOAL 3------------------
-- APLIKASI FUNGSI
-- offsetList id3yah p1 0.0 9.0
-- dimana 1dd3yah x = x ^ 2
-- hasil : [0.0,1.0,4.0,9.0,16.0,25.0,36.0,49.0,64.0,81.0]

-- Dalam ekspresi Lambda (\x -> x^2) (x = x + 1) 0.0 9.0
