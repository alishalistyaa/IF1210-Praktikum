-- APAKAH JAM VALID?          isJamValid(j, m, d)
-- DEFINISI DAN SPESIFIKASI
isJamValid :: Int -> Int -> Int -> Bool

-- REALISASI
isJamValid j m d =
  j >= 0 && j <= 23
  && m >= 0 && m <= 59
  && d >= 0 && d <= 59

-- APLIKASI
-- isJamValid 2 30 30 -> True

tambahDua :: Int -> Int
tambahDua x =
  let
    dua = 2
  in
    x + dua

{- isDateValid :: Int -> Int -> Int -> Bool
isDateValid d m y =
  let
    isYearValid = y >= 1900 && y <= 1999
  in
    | isYearValid = True
    | otherwise = False -}

isDateValid :: Int -> Int -> Int -> Bool
isDateValid d m y
    | isYearValid = True
    | otherwise = False
  where
    isYearValid = y >= 1900 && y <= 1999

formatTime :: Int -> (Int, Int, Int, Int)
formatTime s =
  (
    div s 86400,
    -- mod s 86400 = a adalah detik sisanya
    -- detik sisa tersebut akan kita konversi ke dalam jam
    -- jam adalah div a 3600
    div (mod s 86400) 3600,
    -- detik sisanya akan dikonversi ke dalam menit -> tapi dia apa?
    -- sisanya mod (mod s 86400) 3600 -> sisa detiknya, akan dikonversi ke dalam menit
    div (mod (mod s 86400) 3600) 60,
    -- sisanya apa? mod (mod (mod s 86400) 3600) 60
    mod (mod (mod s 86400) 3600) 60
  )

convertToPenny :: Int -> Int -> Int -> Int -> (Int, Int)
convertToPenny q d n p =
  let
    cents = q * 25 + d * 10 + n * 5 + p * 1
  in
    (div cents 100, mod cents 100)

handshake :: Int -> Int
handshake n
  | n == 2 = 1
  | otherwise = handshake (n - 1) + (n - 1)

deretSegitiga :: Int -> Int
deretSegitiga n
  | n == 1 = 1
  | otherwise = deretSegitiga (n - 1) + n

isGanjil :: Int -> Bool
isGanjil n
  | n == 0 = False
  | n == 1 = True
  | otherwise = isGanjil (n - 2)

luasBS :: Int -> Int
luasBS n
  | n == 1 = 1
  | otherwise = luasBS (n - 1) + 2 * n - 1

sumOfDigits :: Int -> Int
sumOfDigits n
  | n < 10 = n
  | otherwise = mod n 10 + sumOfDigits (div n 10)

sumRange :: Int -> Int -> Int
sumRange a b
  | a == b = a
  | otherwise = a + sumRange (a + 1) b