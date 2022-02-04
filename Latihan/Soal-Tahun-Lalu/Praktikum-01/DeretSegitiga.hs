module DeretSegitiga where
    -- DeretSegitiga            deretSegitiga(n)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    deretSegitiga :: Int -> Int 
    -- deretSegitiga(n) menghasilkan nilai bilangan ke-n pada deret segitiga
    -- prekondisi: n > 0

    -- Realisasi
    deretSegitiga n = if n == 1 then 1 else deretSegitiga(n-1) + n

    -- Contoh Aplikasi
    -- deretSegitiga 5