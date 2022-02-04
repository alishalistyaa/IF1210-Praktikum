isDateValid ::  Int -> Int -> Int -> Bool
{- isDateValid(d,m,y) mengembalikan nilai true jika 
   d, m, y membentuk date yang valid. Definisi date yang 
   valid adalah jika elemen hari (d) bernilai antara 1 
   dan 31, tergantung pada bulan dan apakah tahun kabisat 
   atau bukan, elemen bulan (m) bernilai antara 1 dan 12, 
   dan elemen tahun (y) bernilai antara 0 dan 99.
   Nilai y mewakili tahun 1900 s.d. 1999 -}
isKabisat :: Int -> Bool
{- -}

isKabisat y =
  ((mod y 4) == 0) && ((mod y 100) /= 0) || ((mod (1900+y) 400) == 0)
  
isDateValid d m y 
  | (m==1) || (m==3) || (m==5) || (m==7) || (m==8) || (m==10) || (m==12) =
    {- bulan dengan 31 hari -}
    (d>=0) && (d<=31) && (y>=0) && (y<=99)
  | (m==4) || (m==6) || (m==9) || (m==11) =
    {- bulan dengan 30 hari -}
    (d>=0) && (d<=30) && (y>=0) && (y<=99)
  | (m==2) = (d>=0) && (d <= (if (isKabisat y) then 29 else 28)) && (y>=0) && (y<=99)
  | otherwise = False