-- module prevDetik where
    -- Definisi dan Spesifikasi
    prevDetik :: Int -> Int -> Int -> (Int, Int, Int)
    -- prevDetik j m d menghasilkan tuple (j1, m1, d1) dengan j1, m1, dan d1 masing-masing
    -- adalah jam, menit, dan detik sebelum jam j:m:d
    -- Asumsi/prekondisi: 0 <= j <= 23, 0 <= m <= 59, 0 <= d <= 59

    -- Realisasi
    

    prevDetik j m d 
        | j == 0 = prevDetik 24 j d
        | m == 0 = prevDetik (j-1) 60 d
        | d == 0 = prevDetik j (m-1) 60
        | otherwise = (j, m, d-1)