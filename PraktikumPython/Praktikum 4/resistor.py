# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 18 Maret 2021
# Deskripsi     : Soal Praktikum #4.1
#               Materi Dasar Pemrograman

# KAMUS 
# a : integer (input)
# t : integer (input)
# kubus, limas, volumetotal : float 

# PROGRAM FUNGSI
# Menerima input R1,R2,R3


R1 = float(input())
R2 = float(input())
R3 = float(input())
pilihan  = str(input()[0])

if R1 <= 0 or R2 <= 0 or R3 <= 0:
    while R1 <= 0 or R2 <= 0 or R3 <= 0:
        print("Masukan salah")
        R1 = float(input())
        R2 = float(input())
        R3 = float(input())
        pilihan  = str(input()[0])
if pilihan != "s" and pilihan != "S" and pilihan != "P" and pilihan != "p":
    while pilihan != "s" and pilihan != "S" and pilihan != "P" and pilihan != "p":
        print("Masukan salah")
        R1 = float(input())
        R2 = float(input())
        R3 = float(input())
        pilihan  = str(input()[0])



if pilihan == 's' or pilihan == 'S':
    RTOT = R1 + R2 + R3
elif pilihan ==  "p" or pilihan =="P":
    RTOT = (R1*R2*R3)/(R1*R2 + R1*R3 + R2*R3)

print("%.2f" % RTOT)