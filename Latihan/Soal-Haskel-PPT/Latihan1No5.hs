-- HITUNG MATA UANG US     
-- howMuchMoney (q,d,n,p)

-- Definisi dan Spesifikasi 
howMuchMoney :: Int -> Int -> Int -> Int -> (Int,Int)
    {- Fungsi yang menerima input sejumlah koin
    quarter, dime, nickel, dan penny. Menghasilkan berapa
    dollar dan berapa sen yang senilai dengan 
    total koin-koin tersebut. -}
-- Realisasi
howMuchMoney q d n p =
    let howMuchDollars = div ((q * 25) + (d * 10) + (n * 5) + (p * 1)) 100
        howMuchCents = mod ((q * 25) + (d * 10) + (n * 5)+(p * 1)) 100
    in (howMuchDollars, howMuchCents)

-- Contoh Aplikasi
-- howMuchMoney 8 20 30 77