# Program HitungVokal
# Membaca masukan sejumlah karakter dan menyimpannya ke file data.txt
# Membaca isi file data.txt, menghitung dan menampilkan ada berapa
# banyak karakter huruf hidup dalam file
# KAMUS
mark = '.' # constant mark : character = '.'

def TulisTeks():
    # Membaca kalimat (kumpulan karakter) diakhiri mark dari keyboard
    # dan menyimpannya ke file data.txt
    # KAMUS LOKAL
    # f : SEQFILE of char
    # kalimat
    # ALGORITMA
    f = open("dataku.txt",'w')
    kalimat = input() # Baca sebuah kalimat dari keyboard

    # diakhiri mark '.'
    # Kalimat kosong hanya ada mark
    f.write(kalimat) # Menuliskan kalimat ke file
    f.close()

# ALGORITMA PROGRAM UTAMA
TulisTeks()
f = open("dataku.txt",'r')
baca = f.read(1)

dict_vokal = ['A','a','I','i','U','u','E','e','O','o']
count = 0

while baca != mark:
    for i in dict_vokal:
        if i == baca:
            count += 1
    baca = f.read(1)

print(count)