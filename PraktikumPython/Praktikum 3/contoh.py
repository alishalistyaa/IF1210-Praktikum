# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 17 November 2021
# Deskripsi     : Soal Praktikum #4.1
#               Fungsi, Prosedur, dan Matriks
#               Materi Pengenalan Komputer
#               Program yang menerima sisi kubus dan limas, kemudian menghitung volume keduanya

# KAMUS 
# a : integer (input)
# t : integer (input)
# kubus, limas, volumetotal : float 

# PROGRAM FUNGSI
# Fungsi volume kubus
def volumekubus(a):
    return a**3
# Fungsi volume limas
def volumelimas(a,t):
    return (1/3) * (a**2) * t

# PROGRAM UTAMA
# Input data
a = int(input("Masukkan panjang sisi kubus: "))
t = int(input("Masukkan tinggi limas: "))

# Pemanggilan fungsi
kubus = volumekubus(a)
limas = volumelimas(a,t)
# Total fungsi
volumetotal = kubus+limas

# Menampilkan volume total di layar
print(f"Volume rumah yang terbentuk adalah {volumetotal} meter kubik.")