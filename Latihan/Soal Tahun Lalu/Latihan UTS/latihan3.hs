konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
konsDot :: [Int] -> Int -> [Int]
konsDot l e = l ++ [e]
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1
-- ditambah head, tail, init, dan last

convertCents :: Int -> (Int, Int, Int, Int)
convertCents c =
  (
    div c 25,
    div (mod c 25) 10,
    div (mod (mod c 25) 10) 5,
    mod (mod (mod c 25) 10) 5
  )

hitungBiayaHotel :: Int -> Bool -> Int
hitungBiayaHotel m k =
  if k then
    -- Ada kartu membership
    100000 * m
  else
    125000 * m

angkaKeX :: Int -> Int
angkaKeX x
  | x == 1 = 5
  | otherwise = angkaKeX (x - 1) + 2

duaPangkatN :: Int -> Int
duaPangkatN n 
  | n == 0 = 1
  | otherwise = 2 * duaPangkatN (n - 1)

count8 :: Int -> Int
count8 n
  | n < 10 = 
    if n == 8 then
      1
    else
      0
  | otherwise =
    let
      satuan = mod n 10
      sisa = div n 10
    in
      if satuan == 8 then
        1 + count8 sisa
      else
        count8 sisa

reverseList :: [Int] -> [Int]
reverseList l
  | isEmpty l = []
  | otherwise = konsDot (reverseList (tail l)) (head l)

buatGanjil :: [Int] -> [Int]
buatGanjil l
  | isEmpty l = []
  | otherwise = 
    if (mod (head l) 2 == 0) then
      konso ((head l) + 1) (buatGanjil (tail l))
    else
      konso (head l) (buatGanjil (tail l))

splitAlternate :: [Int] -> ([Int], [Int])
splitAlternate l
  | isEmpty l = ([], [])
  | otherwise =
    let
      (m, n) = splitAlternate (tail l)
    in
      (konso (head l) n, m)

