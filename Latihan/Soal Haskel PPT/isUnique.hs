isUnique :: [Char] -> Bool 
{- isUnique lc) menghasilkan true jika lc 
adalah list dengan elemen unik, yaitu tidak ada
elemen pada lc yang muncul lebih dari 1 kali-}

isUnique lc
    if null lc then True -- basis
    else --rekurens
        if head lc == = False
        | otherwise isUnique lc