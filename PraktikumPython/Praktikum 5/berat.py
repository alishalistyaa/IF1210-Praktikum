# Nama  : Alisha Listya Wardhani
# NIM   : 16521209
# Kelas : K02



isi = []
minim = 0
maks = 0
total = 0

# Input Data pertama
N = int(input())
if N >= 30 and N <= 200:
     isi.append(N)
     total += N

# Input Data 
while N != (-999):
    N = int(input())
    if N >= 30 and N <= 200:
     isi.append(N)
     total += N

# Mengecek berapa banyak mahasiswa
for i in range(0,len(isi)):
    if isi[i] <= 50:
        minim += 1
    elif isi[i] >= 100:
        maks += 1

# Print
if len(isi)> 0:
    rata = round(total/len(isi))
    print(len(isi))
    print(minim)
    print(maks)
    print(rata)
else: print("Data kosong")

