module ListOfInteger where

nbOcc :: [Int] -> Int -> Int
nbOcc li y = length ([x | x <- li, x == y])
-- hi kak, (lagi-lagi) ini bukan soal aku di praktikum tapi aku mau mencoba hal baru
-- yang aku rasa lebih efektif dari yg 'code' seharusnya

-- ONE LINEEE
-- thank you kak have a great day