module TesKategori where
    -- Tes kategori            tesKategori(t, bl k)

    -- Identitas
    -- Nama     : Alisha Listya Wardhani
    -- NIM      : 16521209
    -- Kelas    : 02

    -- Definisi dan Spesifikasi
    tesKategori :: Int -> Int -> Int -> Bool
    {-esKategori yang menerima input 3 buah integer, 
    misalnya t, b, dan k dengan t mewakili tinggi badan 
    seseorang (dalam cm, bernilai > 0), b mewakili berat 
    badan seseorang (dalam kg, bernilai > 0), dan k 
    mewakili suatu kategori kendaraan atraksi (bernilai 0..4). 
    Fungsi menghasilkan nilai true jika orang dengan tinggi t 
    dan berat b, boleh menaiki kendaraan atraksi dengan 
    kategori k sesuai dengan ketentuan di atas. Jika tidak 
    boleh menaiki kategori apa pun, berarti nilai k = 0.-}

    tesKategori t b k
        | t > 100 && b <= 150 && k /= 1 = True
        | t <= 100 && b <= 150 && k == 1 = True
        | t <= 100 && b <= 150 && b > 30 && k == 2 = True
        | t <= 100 && b > 150 && k == 2 = True
        | t <= 200 && t > 100 && b > 150 && k == 2 = True
        | t <= 200 && t > 100 && b > 150 && k == 3 = True
        | otherwise = k == 0

    -- Contoh Aplikasi
    -- tesKategori 120 80 1