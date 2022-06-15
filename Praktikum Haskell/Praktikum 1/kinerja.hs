kinerja :: Int -> Int -> Int -> (Int, Int, Int, Int)
kinerja j m d
    | j - 17 < 0 = (0, 0, 0, (-1))
    | m < 30 &&  j-17 > 0 = kinerja ( (j-1) (m+60) d 1)
    | j - 17 > 0 = ( (j-17), (m-30), d, 1)
    | otherwise = (0,0,0,0)