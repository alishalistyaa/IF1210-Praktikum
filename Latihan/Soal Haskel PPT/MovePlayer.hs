

movePlayer :: Int -> Int -> Int 
{- movePlayer a n menghasilkan posisi baru seorang pemain yang semuka
berada di kotak a setelah berpindah sebanyak n kotak. Posisi yang bary
harus tetap berada di dalam board (berada pada selang 1..40)-}

nextSpace :: Int -> Int 
{-nextSpace menghasilkan nomor kotak berikutnya setelah a-}

movePlayer a n 
    | n == 1 = 1
    | otherwise = movePlayer (nextSpace a) (n-1)

nextSpace a
    | a == 40 = 1
    | otherwise = a + 1