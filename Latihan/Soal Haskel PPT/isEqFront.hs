
-- Definisi dan Spesifikasi
isEqFront :: [Char] -> [Char] -> Bool
{- Fungsi isEqFront menerima 2 buah list of character
yang tidak kosong, misalnya T1 dan T2 dan menghasilkan true
jika potongan awal list T2 mengandung T1-}

-- Realisasi
isEqFront t1 t2
    | null t1 = True
    | head t1 == head t2 = isEqFront (tail t1) (tail t2)
    | head t1 /= head t2 = False
    | otherwise =  False

-- Contoh Aplikasi
-- isEqFront ['a','b','s'] ['a','b','s','g','r']
-- hasil : true

-- isEqFront ['a','b','s'] ['c','b','s','g','r']
-- hasil : False