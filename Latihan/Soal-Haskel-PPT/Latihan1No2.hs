-- HITUNGLAH JUMLAH DETIK    
-- jumlahDetik (j,m,d)

-- Definisi dan Spesifikasi 
jumlahDetik :: Int -> Int -> Int -> Int
    {- jumlahDetik adlaah fungsi yang menghitung jumlah detik
    dari jam tersebut terhitung mulai jam 0:0:0 pada tanggal ybs -}

-- Realisasi
jumlahDetik j m d = (((j*60)+m)*60)+d

-- Contoh Aplikasi
-- jumlahDetik 23 06 54 