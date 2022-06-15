konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
konsDot :: [Int] -> Int -> [Int]
konsDot l e = l ++ [e]
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1
-- ditambah head, tail, init, dan last

filterPositif :: [Int] -> [Int]
filterPositif l
  | isEmpty l = []
  | otherwise =
    if (head l) <= 0 then
      filterPositif (tail l)
    else
      konso (head l) (filterPositif (tail l))

filterList :: [Int] -> (Int -> Bool) -> [Int]
filterList l f
  | isEmpty l = []
  | otherwise =
    if not (f (head l)) then
      filterList (tail l) f
    else
      konso (head l) (filterList (tail l) f)

sumInteger :: Int -> Int -> (Int -> Bool) -> Int
sumInteger m n f
  | m > n = 0
  | m == n =
      if not (f m) then
        0
      else
        m
  | otherwise =
      if not (f m) then
        0 + sumInteger (m + 1) n f
      else
        m + sumInteger (m + 1) n f

mergeList :: [Int] -> [Int] -> [Int]
mergeList l1 l2
  | isEmpty l1 && isEmpty l2 = []
  | isEmpty l1 && not (isEmpty l2) = l2
  | not (isEmpty l1) && isEmpty l2 = l1
  | otherwise =
      if (head l1) < (head l2) then
        konso (head l1) (mergeList (tail l1) l2)
      else
        konso (head l2) (mergeList l1 (tail l2))

{-
  sumIsiList :: [Int] -> Int
  sumIsiList [1, 2, 3, 4, 5] = 15
-}

sumIsiList :: [Int] -> Int
sumIsiList l
  | isEmpty l = 0
  | otherwise = head l + sumIsiList (tail l)

{-
  sumIsiListGanjil :: [Int] -> Int
  sumIsiListGanjil [1, 2, 3, 4, 5] = 9
-}

sumIsiListGanjil :: [Int] -> Int
sumIsiListGanjil l
  | isEmpty l = 0
  | otherwise =
    if (mod (head l) 2 == 0) then
      sumIsiListGanjil (tail l)
    else
      head l + sumIsiListGanjil (tail l)

{-
  sumIsiListFilter :: [Int] -> (Int -> Bool) -> Int
  sumIsiListFilter [1, 2, 3, 4, 5] (\x -> x > 2) = 12
-}

sumIsiListFilter :: [Int] -> (Int -> Bool) -> Int
sumIsiListFilter l f
  | isEmpty l = 0
  | otherwise =
    if (not (f (head l))) then
      sumIsiListFilter (tail l) f
    else
      head l + sumIsiListFilter (tail l) f

{-
  sumIsiListIndexGanjil :: [Int] -> Int
  sumIsiListIndexGanjil [5, 1, 3, 4, 2] = 15
  LIST: [5, 1, 3, 4, 2]
  INDEX: 1  2  3  4  5
-}

sumIsiListIndexGanjil :: [Int] -> Int
sumIsiListIndexGanjil l
  | isEmpty l = 0
  | isOneElmt l = head l
  | otherwise = head l + sumIsiListIndexGenap (tail l)

sumIsiListIndexGenap :: [Int] -> Int
sumIsiListIndexGenap l
  | isEmpty l = 0
  | isOneElmt l = 0
  | otherwise = sumIsiListIndexGanjil (tail l)

sumIsiListIndexGanjil2 :: [Int] -> Int
sumIsiListIndexGanjil2 l
  | isEmpty l = 0
  | isOneElmt l = head l
  | otherwise = head l + (sumIsiListIndexGanjil2 (tail (tail l)))

{-
  PR:
  Buat lagi semua yang di atas tapi bukan tentang sum, tentang count
  (ganti jumlah dgn banyak elemen)
-}

isAllGanjil :: [Int] -> Bool
isAllGanjil l
    | isEmpty l           = True  
    | mod (head l) 2 == 0 = False 
    | otherwise           = isAllGanjil (tail l)

getSmallest :: [Int] -> Int
getSmallest l
    | isOneElmt l = head l 
    | otherwise   = 
      if (head l < getSmallest (tail l)) then
        head l
      else
        getSmallest (tail l)

delElement :: Int ->[Int] -> [Int]
delElement x l
    | isEmpty l = l
    | head l == x = tail l
    | otherwise = konso (head l) (delElement x (tail l))

sortList :: [Int] -> [Int]
sortList l
  | isEmpty l || isOneElmt l = l
  | otherwise =
    let
      x = getSmallest l
    in
      konso x (sortList (delElement x l))

splitAlternate :: [Int] -> ([Int], [Int])
splitAlternate l
  | isEmpty l = ([], [])
  | otherwise =
    let
      (m, n) = splitAlternate (tail l)
    in
      (konso (head l) n, m)