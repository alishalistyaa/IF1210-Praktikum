
-- Definisi dan Spesifikasi
delNthElmt :: Int -> [Char] -> [Char]
{- delNthElmt(n,l) menghilangkan elemen ke-n dari l.
Asumsi: n lebih kecil atau sama dengan jumlah elemen l.
l tidak kosong. -}

-- Realisasi
delNthElmt n l = take (n-1) l ++ drop n l

-- Contoh aplikasi
-- delNthElmt 5 ['a','b','c','f','g','h','d','s','s']
-- hasil : "abcfhdss"

-- hasil merupakan string karena di haskell,
-- string merupakan sinonim untuk [Char]
-- Jika hasil yang diinginkan adalah ["a","b","c","f","h","d","s","s"]
-- maka dapat menggunaakan fungsi:

-- delNthElmt :: Int -> [Char] -> [[Char]]
-- delNthElmt n l = map(:[]) (take (n-1) l ++ drop n l)