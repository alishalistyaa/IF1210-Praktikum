

ubahArah :: Int -> Int -> Int 

ubahArah x y
    -- Jika hasil melebihi 1 lingkaran maka akan dikutang 1 lingkaran
    | x + y > 360 = x + y - 360

    -- Jika hasil melebihi 1 lingkaran tapi ke arah kiri maka akan ditambah 1 lingkaran
    | x + y < 0 = x + y + 360

    -- Jika hasil dalam lingkup 260 derajat maka akan ditambahkan
    | otherwise = x + y

-- Contoh Aplikasi
-- CONTOH 1 --
-- ubahArah 1 90
-- hasil : 91

-- CONTOH 2 --
-- ubahArah 63 (-270)
-- hasil : 153