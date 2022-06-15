-- SumOfDigits           sumOfDigits(n)

-- Identitas
-- Nama     : Alisha Listya Wardhani
-- NIM      : 16521209
-- Kelas    : 02

-- Deinisi dan Spesifikasi
sumOfDigits :: Int -> Int 
{-sumOfDigits n menghasilkan penjumlahan setiap bilangan tunggal yang membentuk n
prekondisi n >= 0  -}

sumOfDigitsPosNeg :: Int -> Int
{- sumOfDigitsPosNeg merupakan kondisi dimana bilangan merupakan bilangan negatif.
Dalam kasus ini, tanda negatif akan diabaikan dengan mengkali bilangan tersebut (n)
dengan (-1).-}

-- Realisasi
sumOfDigitsPosNeg n = sumOfDigits (n*(-1))
sumOfDigits n
    | n < 0 = sumOfDigitsPosNeg n                   -- rekursif
    | n < 10 = n                                    -- basis
    | otherwise = mod n 10 + sumOfDigits(div n 10)  -- rekursif
    
-- Contoh Aplikasi 
-- sumOfDigits 1234