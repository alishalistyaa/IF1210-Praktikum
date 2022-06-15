-- APAKAH DATE VALID?      
-- isDateValid (d,m,y)

-- Definisi dan Spesifikasi 
isDateValid :: Int -> Int -> Int -> Bool
    {- isDateValid (d,m,y) mengembalikan nilai true jika
    d, m, y membentuk date yang valid. Definisi date yang
    valid adalah jika elemen hari (d) bernilai antara 1
    dan 31, tergantung pada bulan dan apakah tahun kabisat
    atau bukan, elemen bulan (m) bernilai antara 1 dan 12,
    dan elemen tahun (y) bernilai antara 0 dan 99.
    Nilai y mewakili tahun 1900 s.d. 1999 -}
isKabisat :: Int -> Bool
    {- isKabisat digunakan untuk mengecek apakah tahun tersebut
    merupakan tahun kabisat.-}
-- Realisasi
isKabisat y = 
    (y `mod` 400 == 0) || (y `mod` 100 /=0) && (y `mod` 4 == 0)

isDateValid d m y
    | ((y>=0) && (y<=99)) && ((m==1) || (m==3) || (m==5) || (m==7) || (m==8) || (m==10) || (m==12)) = (d>=1) && (d<=31)
    | ((y>=0) && (y<=99)) && ((m==4) || (m==6) || (m==9) || (m==11)) = ((d>=1) && (d<=30))
    | ((y>=0) && (y<=99)) && (m==2) = (d>=1) && (d<=(if isKabisat y then 29 else 28))
    | otherwise = False

-- Contoh Aplikasi
-- isDateValid 22 03 03