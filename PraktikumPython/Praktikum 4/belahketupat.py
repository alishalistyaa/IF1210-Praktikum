# Nama  :Muhamad Aji Wibisono
# Nim   :16521119

# Program BelahKetupat
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar belah ketupat sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

# KAMUS
# Variabel
#    N : int

def GambarBelahKetupat(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar belah ketupat dengan panjang diagonal mendatar sebesar N
#      sesuai spesifikasi soal
# Lengkapilah kamus lokal dan algoritma prosedur di bawah ini
    #Kamus lokal: a, batesan = int; kosong, bintang = str
    a = 1
    while a <= N:
        batesan = int((N-a)/2)
        kosong = batesan* ( " "[0] )
        bintang = a* ( "*"[0] )

        print(kosong + bintang + kosong)
        a = a + 2
    a = a - 4
    while a >= 1:
        batesan = int((N-a)/2)
        kosong = batesan* ( " "[0] )
        bintang = a* ( "*"[0] )

        print(kosong + bintang + kosong)
        a = a - 2

    return

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
# Lengkapilah kamus lokal dan algoritma fungsi di bawah ini
    #Kamus lokal: valid = bool
    if N > 0 and N%2 != 0:
        valid = True
    else:
        valid = False
    return valid

# ALGORITMA PROGRAM UTAMA
N = int(input())
if (IsValid(N)):  # lengkapi dengan pemanggilan fungsi IsValid
    GambarBelahKetupat(N)    # lengkapi dengan pemanggilan prosedur GambarBelahKetupat
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")