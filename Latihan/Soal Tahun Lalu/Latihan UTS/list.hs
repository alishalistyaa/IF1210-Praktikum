konso :: Int -> [Int] -> [Int]
konso e l = [e] ++ l
konsDot :: [Int] -> Int -> [Int]
konsDot l e = l ++ [e]
isEmpty :: [Int] -> Bool
isEmpty l = null l
isOneElmt :: [Int] -> Bool
isOneElmt l = (length l) == 1
-- ditambah head, tail, init, dan last

nbElmt :: [Int] -> Int
nbElmt l
  | isEmpty l = 0
  | otherwise = 1 + nbElmt (tail l)

isMember :: Int -> [Int] -> Bool
isMember x l
  | isEmpty l = False
  | otherwise = (head l) == x || isMember x (tail l)

copy :: [Int] -> [Int]
copy l
  | isEmpty l = []
  | otherwise = konso (head l) (copy (tail l))

isEqual :: [Int] -> [Int] -> Bool
isEqual l1 l2
  | isEmpty l1 && isEmpty l2 = True
  | isEmpty l1 && not (isEmpty l2) = False
  | not (isEmpty l1) && isEmpty l2 = False
  | otherwise = (head l1 == head l2) && (isEqual (tail l1) (tail l2))

konkat :: [Int] -> [Int] -> [Int]
konkat l1 l2
  | isEmpty l1 = l2
  | otherwise = konso (head l1) (konkat (tail l1) l2)

elmtKeN :: Int -> [Int] -> Int
elmtKeN x l
  | x == 1 = head l
  | otherwise = elmtKeN (x - 1) (tail l)

isXElmtKeN :: Int -> Int -> [Int] -> Bool
isXElmtKeN x n l
  | n == 1 = x == head l
  | otherwise = isXElmtKeN x (n - 1) (tail l)

countFactorOfX :: Int -> [Int] -> Int
countFactorOfX n l
  | isEmpty l = 0
  | otherwise =
    if mod n (head l) == 0 then
      1 + countFactorOfX n (tail l)
    else
      0 + countFactorOfX n (tail l)

delNthElmt :: Int -> [Int] -> [Int]
delNthElmt n l
  | n == 1 = tail l
  | otherwise =
    konso (head l) (delNthElmt (n - 1) (tail l))

splitList :: [Int] -> ([Int], [Int])
splitList l
  | isEmpty l = ([], [])
  | otherwise =
      let
        (m, n) = splitList(tail l)
      in
        if head l >= 0 then
          (konso (head l) m, n)
        else
          (m, konso (head l) n)