# Nama  : Alisha Listya Wardhani
# NIM   : 16521209
# Kelas : K02

# Input Pertama
N = int(input())
ar = []
cek = False
# Input kedua
for i in range(0,N):
    nilai = int(input())
    ar.append(nilai)

# Inisialisasi
X = int(input())
maks = ar[0]
minim = ar[0]

# Algoritma Utama
for i in range(0,N):
    # untuk mengecek maks min
    if ar[i]> maks:
        maks = ar[i]
    if ar[i]< minim:
        minim = ar[i]
    if ar[i] == X:
        cek = True

# Print
ekstrim = False
if cek:
    if X == maks:
        print("maksimum")
        ekstrim = True
    if X == minim:
        print("minimum")
        ekstrim = True
    if not(ekstrim): print("N#A")
else:
    print(X, "tidak ada")