module AlternateSort where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = e : li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty = null

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = length l == 1

--------------------------------------
-- AlternateSort          alternateSort([lst])

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

-- fungsi antara untung sorting
input :: Int -> [Int] -> [Int]
input x lst
  | isEmpty lst = [x]
  | x <= head lst = konso x lst
  | otherwise = konso (head lst) (input x (tail lst))

sorting :: [Int] -> [Int]
sorting lst =
    if isEmpty lst then []
    else input (head lst) (sorting (tail lst))

-- fungsi untuk memecah list
pecah1 :: [Int] -> [Int]
pecah1 lst
  | isOneElmt (tail lst) = [head lst]
  | isOneElmt lst = [head lst]
  | otherwise = konso (head lst) (pecah1 (tail (init lst)))

pecah2 :: [Int] -> [Int]
pecah2 lst
  | isOneElmt lst = []
  | isOneElmt (init lst) = [last lst]
  | otherwise = konsDot (pecah2 (tail (init lst))) (last lst)

--hasil
gabungkan :: [Int] -> [Int] -> [Int]
gabungkan l1 l2
  | isEmpty l1 = []
  | isEmpty l2 = [head l1]
  | otherwise = konso (head l1) (konso (last l2) (gabungkan (tail l1) (init l2)))


alternateSort :: [Int] -> [Int]
alternateSort lst =
    let
        urut = sorting lst
        l1 = pecah1 urut
        l2 = pecah2 urut
        hasil = gabungkan l1 l2
    in hasil