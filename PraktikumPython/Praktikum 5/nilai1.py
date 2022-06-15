# Nama  : Alisha Listya Wardhani
# NIM   : 16521209
# Kelas : K02



isi = []
minim = 0
maks = 0
total = 0
betul =  True

# Input Data pertama
N = int(input())
if N >= 0 and N <= 100:
     isi.append(N)
     total += N
elif N == -9999:
    betul = False

# Input Data 
while N != (-9999):
    N = int(input())
    if N >= 0 and N <= 100:
     isi.append(N)
     total += N

# Mengecek berapa banyak mahasiswa
for i in range(0,len(isi)):
    if isi[i] <= 40:
        minim += 1
    elif isi[i] >= 40:
        maks += 1

# Print
if betul:
    if len(isi)> 0:
        rata = (total/len(isi))
        print(len(isi))
        print(maks)
        print(minim)
        print("%.2f"%rata)
    else: print(0)
else: print("Data nilai kosong")
