-- DEFINISI DAN SPESIFIKASI
isOrdered:: [Int] -> Bool
{-id Ordered l menghasilkan true jila elemen-elemen pada l 
terurut membesar, false jika tidak.
Prekondisi: 1 tidak kosong. -}

isOneElmt :: [Int] -> Bool
-- isOneElmt(l) true jika list of integer l hanya -- mempunyai satu elemen
-- REALISASI
isOneElmt l = length l == 1

-- REALISASI
isOrdered l = isOneElmt l || ( --rekurens
  head l <= head(tail l) &&
    isOrdered (tail l))
