module DeretSegitiga where
    -- DeretSegitiga            deretSegitiga(n)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    deretSegitiga :: Int -> Int 
    -- deretSegitiga(n) menghasilkan nilai bilangan ke-n pada deret segitiga
    -- Deret segitiga: 1,3,6,10,15,...
    -- prekondisi: n > 0

    -- Realisasi
    deretSegitiga n = 
        if n == 1 then 1                -- basis
        else deretSegitiga(n-1) + n     -- rekursif

    -- Contoh Aplikasi
    -- deretSegitiga 5
    -- Hasil : 15