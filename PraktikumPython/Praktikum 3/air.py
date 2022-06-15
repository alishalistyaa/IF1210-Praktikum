# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 2 Maret 2022
# Deskripsi     : Soal Praktikum #1.1

# KAMUS 
# T : integer

# PROGRAM FUNGSI
# Input
T = int(input())

if T < 0:
    print("PADAT")
elif T > 0 and T < 100:
    print("CAIR")
elif T> 100:
    print("GAS")
elif T == 0:
    print("ANTARA PADAT-CAIR")
elif T == 100:
    print("ANTARA CAIR-GAS")