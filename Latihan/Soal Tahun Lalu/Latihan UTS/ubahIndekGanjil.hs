

konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}

-- REALISASI
konso e l = [e] ++ l


konsDot :: [Int] -> Int-> [Int]
{- konsDot(l,e) menghasilkan sebuah list dari l (list of
-- elemen) dan e (sebuah elemen),
-- dengan e sebagai elemen terakhir: l • e -> l'-}

-- REALISASI
konsDot l e = l ++ [e]


 -- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head : [<type_elemen>] -> <type_elemen>
-- head(l) menghasilkan elemen pertama list l, l tidak kosong
-- tail : [<type_elemen>] -> [<type_elemen>]
-- tail(l) menghasilkan list tanpa elemen pertama list l, -- l tidak kosong
-- last : [<type_elemen>] -> <type_elemen>
-- last(l) menghasilkan elemen terakhir list l, l tidak kosong
-- init : [<type_elemen>] -> [<type_elemen>]
-- init(l) menghasilkan list tanpa elemen terakhir list l, -- l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty l = null l

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isOneElmt :: [Int] -> Bool
-- isOneElmt(l) true jika list of integer l hanya -- mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

-- DEFINISI DAN SPESIFIKASI
konkat:: [Int] -> [Int] -> [Int]
-- konkat(L1,L2) menghasilkan konkatenasi l1 dan l2, -- dengan list l2 "sesudah" list l1
-- REALISASI 
konkat l1 l2 =
    if isEmpty l1 then l2 -- Basis 
    else -- Rekurens 
    konso (head l1) (konkat (tail l1) l2)







--------
ubahindeksganjil :: [Int] -> [Int]

ubahindeksganjil li 
    | isEmpty li = []
    | odd (head li) = konso ((-1)*(head li)) (ubahindeksganjil (tail li))
    | otherwise = konso (head li) (ubahindeksganjil (tail li))