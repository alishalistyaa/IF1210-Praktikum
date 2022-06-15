module ListOfInteger where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

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
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

----------------------------------------------------------------------------

-- SOAL 1
isAllGanjil :: [Int] -> Bool

-- REALISASI
isAllGanjil li
-- ketika list kosong maka sudah semua di cek dan hasil true
    | isEmpty li = True                     -- basis
    | odd (head li) = isAllGanjil (tail li) -- rekurens
-- ketika list dicheck dan ada yang genap maka false
    | otherwise = False                     -- basis

-- SOAL 2
getSmallest :: [Int] -> Int

-- REALISASI
getSmallest li
-- ketika list hanya mengandung 1 integer maka integer tersebut integer terkecil
    | isOneElmt li = head li                -- basis

-- ketika elemen pertama dari list tersebut lebih kecil dari lainnya maka
-- elemen tersebut merupakan yang terkecil
    | head li < getSmallest (tail li) = head li -- rekurens dan basis

-- ketika elemen pertama dari list lebih besar, maka proceed ke elemen selanjutnya
-- untuk di check
    | otherwise = getSmallest (tail li)      -- rekurens

-- SOAL 3
delElement :: [Int] -> Int-> [Int]

-- REALISASI
delElement li x 
-- jika list kosong maka tidak akan terjadi penambahan
    | isEmpty li = []

-- jika list bukan sama dengan elemen yang dicari,
-- maka akan ditambahkan ke dalam list baru
    | head li /= x = konso (head li) (delElement (tail li) x)

-- jika elemen sama dengan yang dicari, maka
-- cek elemen berikutnya
    | otherwise = delElement (tail li) x

-- SOAL 4
sortList :: [Int] -> [Int]

-- REALISASI
sortList li
-- jika list kosong maka kembalikan list kosong
    | isEmpty li = []                                                                   -- basis
-- menyortir list
    | otherwise = konso (getSmallest li) (sortList (delElement li (getSmallest li)))    -- rekurens
