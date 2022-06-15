konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}

-- REALISASI
konso e l = [e] ++ l

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty l = null l

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isOneElmt :: [Int] -> Bool
-- isOneElmt(l) true jika list of integer l hanya -- mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1

removeElmt :: [Int] -> Int -> [Int]
{- removeElmt l x menghasilkan list l tanpa elemen bernilai x paling awal/depan, jika x ada di l.
Jika x tidak ada di l, l tetap. -}
-- Realisasi 
removeElmt l x
    | isEmpty l = [] -- basis jika list kosong
    | head l /= x = konso (head l) (removeElmt (tail l x)) -- rekurens
    | otherwise = konso (tail l) -- basis jika sudah ditemukan yang pertama

isMember :: Int -> [Int] -> Bool
{-isMember x l menghasilkan true jika x adalah elemen l-}
-- Realisasi 
isMember x l
    | (head l) == x = True -- basis jika ditemukan x dalam l
    | isEmpty l = False -- basis jika tidak ditemukan x dalam l 
    | otherwise = isMember x (tail l)



-- Definisi dan Spesifikasi
aturParkir :: [Int] -> Int -> ([Int] -> [Int]) -> ([Int],Int)
{-Fungsi aturParkir menerima tiga masukan, li, n dan f dan menghasilkan nomor slot parkir untuk kendaraan tersebut dan banyaknya kendaraan dari list masukan yang tidak mendapat slot parkir.-}
-- Realisasi 
aturParkir li n f =
    let
        (a,b) = aturParkir ((tail li) n f)
    in
        if isMember (f head li ) a then (a, b+1)
        else if f (head li) < n then (konso (f (head li) a), b)
        else (a, b+1)
    