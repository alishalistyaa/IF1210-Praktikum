module TesSyarat where
    -- Mengetes syarat            tesSyarat(ip,pot)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    tesSyarat :: Float -> Float -> Int 
    {-tesSyarat yang menerima input 2 buah bilangan riil
    dan mengetes apakah mahasiswa tsb layak beasiswa ABB 
    kek gua IP nya ga 4 gadapet ABB SAD-}

    -- Realisasi
    tesSyarat ip pot
        | ip >= 3.5 = 4
        | ip < 3.5 && pot < 1 = 1
        | ip < 3.5 && pot >= 1 && pot < 5 = if ip >= 2.0 then 3 else 2
        | otherwise = 0

    -- Contoh Aplikasi 
    -- tesSyarat 3.51 1.5