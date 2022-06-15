# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 18 Maret 2021
# Deskripsi     : Soal Praktikum #4.1
#               Materi Dasar Pemrograman

N = int(input())

if N <= 0 or N > 100:
    while N <= 0 or N > 100:
        print("Masukan salah. Ulangi!")
        N = int(input())

bilangan = []
for i in range(1,N+1):
    y = int(input())
    bilangan.append(y)

X = int(input())
for i in range(1,len(bilangan)+1):
    if X == 0 and bilangan[i-1] == X:
        print(i)
        break
    elif X == 1 and bilangan[i-1]>0:
        print(i, bilangan[i-1])
        break
    elif X == (-1) and bilangan[i-1]<0:
        print(i,bilangan[i-1])
        break
    elif i == len(bilangan) and X != (-1) and X != 1 and X != 0:
        print("Tidak diproses")
    elif i == len(bilangan) and X == 0 :
        print("Tidak ada 0")
    elif i == len(bilangan) and X == 1 :
        print("Tidak ada positif")
    elif i == len(bilangan) and X == (-1) :
        print("Tidak ada negatif")