

-- Definisi dan Spesifikasi
filterGanjil :: [Int]-> [Int]
{-Fungsi filterGanjil meripakan filtering terhadap
sebuah list of integer li sehingga menghasilkan list dengan elemen
yang hanya terdiri atas bilangan ganjil yang muncul di li. -}

-- Realisasi
filterGanjil li = [x | x <- li, odd x]

-- Contoh Aplikasi
-- filterGanjil [1,2,3,4,5,6,7,8,9,11]
-- hasil: [1,3,5,7,9,11]
