module LuasTrapesium where
    -- Menghitung Luas Trapesium                luasTrapesium(t,s1,s2)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    luasTrapesium :: Float -> Float -> Float -> Float 
    {-fungsi luasTrapesium yang menerima masukan 3 buah bilangan real
    (float) t, s1, s2 dengan t = tinggi trapesium, s1 = panjang sisi sejajar
    s = 2 panjang sisi sejajar 2 dan menghasilkan luas trapesium berdasarkan
    rumus: luas = 1/2 * t * (s1+s2) -}

    -- Realisasi
    luasTrapesium t s1 s2 = 1/2 * t * (s1 + s2)

    -- Contoh Aplikasi
    -- luasTrapesium 2 4 3
    -- Hasil 7.0