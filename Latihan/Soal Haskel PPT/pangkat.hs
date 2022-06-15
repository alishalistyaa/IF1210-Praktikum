-- MENGHITUNG PANGKAT                 pangkat(a,b)

-- DEFINISI DAN SPESIFIKASI
pangkat :: Int -> Int -> Int
{-Fungsi pangkat menerima masuka dua buah iteger, a dan b
dan mengembalikan hasil berupa a^b (a pangkat b) dengan menggunakan
fungsi rekursif. -}
-- prekondisi: a > 0 dan b >=0 dan masukan selalu valid

-- REALISASI
pangkat a b
    -- jika b sudah 0 maka rekursif akan berhenti
    | b == 0 = 1                        -- basis

    -- fungsi rekursif yang menyatakan 
    -- a akan dikali dengan dirinya sebanyak b kali
    | otherwise = a * pangkat a (b-1)   -- rekurens

-- CONTOH APLIKASI
-- pangkat 2 5
-- hasil : 32

-- pangkat 6 6
-- hasil : 46656