-- NAMA : VANIA SALSABILA
-- NIM : 16521286

module LamaTidur where

-- LAMATIDUR                                    lamaTidur(j, m, d)

-- DEFINISI DAN SPESIFIKASI
  lamaTidur :: Int -> Int -> Int -> (Bool, Int, Int, Int)
{- lamaTidur yang dapat menerima input 3 integer yang merupakan 
waktu mereka selesai mempersiapkan acara dan 
dapat mengeluarkan output tuple berisi lama waktu bisa tidur dalam format 
jam, menit, detik -}
-- REALISASI

  lamaTidur j m d
    | (j * 3600) + (m*60) + d < 6*3600 = (False, j-6, m, d)
    | (j * 3600) + (m*60) + d > 6*3600 = (True, j-6, m, d)
    | otherwise = (True, j-6, m, d)


-- APLIKASI
-- lamaTidur 1 0 0s