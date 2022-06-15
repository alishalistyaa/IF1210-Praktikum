-- DEFINISI DAN SPESIFIKASI
mergeList:: [Int] -> [Int] -> [Int]
{- mergeList li1 li2 menghasilkan list of 
    integer yang merupakan hasil penggabungan li1 dan li2, 
    dan tetap terurut membesar.
Prekondisi: li1 dan li2 adalah list terurut membesar 
dan mungkin kosong -}

konso :: Int -> [Int] -> [Int]
{- konso(e,l) menghasilkan sebuah list dari e (sebuah
-- elemen) dan l (list of elemen),
-- dengan e sebagai elemen pertama: e o l -> l'-}
-- REALISASI
konso e l = e : l

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty(l) true jika list of elemen l kosong -- REALISASI
isEmpty = null

mergeList li1 li2
    | isEmpty li1 && isEmpty li2 = []
    | not (isEmpty li1) && isEmpty li2 = li1
    | isEmpty li1 && not (isEmpty li2) = li2
    | otherwise =
        if head li1 <= head li2 then
            konso(head li1) (mergeList (tail li1) li2)
        else -- head li1> head li2
            konso(head li2) (mergeList li1(tail li2))