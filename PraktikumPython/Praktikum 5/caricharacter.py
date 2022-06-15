# Nama  : Alisha Listya Wardhani
# NIM   : 16521209
# Kelas : K02

N = int(input())
isi = []

while N <= 0 or N > 100:
    print("Masukan salah. Ulangi!")
    N = int(input())

for i in range(0,N):
    isi.append(ord(input()))

CC = str(input())

if CC  == "S" or CC == "s":
    for i in range(0,N):
        if (isi[i] >= 97) and (isi[i] <=122):
            print(i+1, chr(isi[i]))
            break
        if i == (N-1):
            print("Tidak ada huruf kecil")
elif CC == "L" or CC =="l":
    for i in range(0,N):
        if (isi[i] >= 65) and (isi[i] <=90):
            print(i+1, chr(isi[i]))
            break
        if i == (N-1):
            print("Tidak ada huruf besar")
elif CC == "X" or CC =="x":
    for i in range(0,N):
        if not(isi[i] >= 65) and (isi[i] <=90) and not((isi[i] >= 65) and (isi[i] <=90)):
            print(i+1, chr(isi[i]))
            break
        if i == (N-1):
            print("Semua huruf")
else: print("Tidak diproses")