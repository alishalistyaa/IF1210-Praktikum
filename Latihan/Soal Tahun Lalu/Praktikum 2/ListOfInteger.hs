module ListOfInteger where

    setDiff :: [Int] -> [Int] -> [Int]
    setDiff li1 li2 = [x | x <- li1, x `notElem` li2]

    -- halo kak ini bukan soal saya :( tapi saya sedang bereksperimen
    -- have a great day :DD