# Tuliskan identitas di sini
# Nama  : Alisha Listya Wardhani
# NIM   : 16521209
# Kelas : K02

# Program GambarPita
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar pita sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarPita(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar pita dengan lebar sebesar N sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    if N == 1:
        print("*")
    else:
        print(' '* (N//2) + "*")

        # Membuat bagian bawah segitiga
        for j in range(((N//2) - 1),0,-1):
            print( (" "*j) + "*" * (N - (2*j)) )
        print("*" * N )
        
        # Membuat bagian atas segitiga
        for i in range(1, ((N//2) + 1)):
            print( (" "*i) + "*"* (N - 2*i))

        

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
# Lengkapilah kamus lokal dan algoritma fungsi di bawah ini

# KAMUS LOKAL

# ALGORITMA
    if N > 0 and N % 2 != 0:
        hasil = True
    else :
        hasil = False

    return(hasil)

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):        # lengkapi dengan pemanggilan fungsi IsValid
    GambarPita(N)    # lengkapi dengan pemanggilan prosedur GambarPita
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")

