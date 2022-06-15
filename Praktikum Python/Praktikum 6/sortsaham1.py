

# Program SortSiswa
# Spesifikasi : ....
import tulisdata

# KAMUS
# namafile: string

def length_manual(list):
    # KAMUS LOKAL
    # list : list
    # length : int

    # ALGORITMA
    # Inisialisasi panjang list = 0
    length = 0                  
    # Looping sebanyak list
    for i in (list):
        length += 1

    return length

# Membuat fungsi append() secara manual
def append_manual(list_awal, item_baru):
    # KAMUS LOKAL
    # list_awal : list
    # item_baru : str, int, float, list
    # length_list_awal, indeks_terakhir : int
    # list_baru : list

    # ALGORITMA
    # Mengetahui panjang list awal
    length_list_awal = length_manual(list_awal)

    # Inisialiasi list kosong
    # Panjangnya length_list_awal + 1 karena mau di append
    list_baru = [0 for i in range(length_list_awal + 1)]
    # Input list awal
    for i in range(length_list_awal):
        list_baru[i] = list_awal[i]
    # Menambahkan item baru
    indeks_terakhir = length_list_awal
    list_baru[indeks_terakhir] = item_baru
    
    return list_baru

    # KAMUS LOKAL
    # List_awal : list

def insertionSort(array):
    # Mengurutkan array dengan insertion sort
    for Pass in range(1, length_manual(array)):
        Temp = array[Pass]
        i = Pass-1
        while i >=0 and Temp[0] < array[i][0]:
            array[i+1] = array[i]
            i -= 1
        array[i+1] = Temp
    
def TXT_Parser(nama_file_txt):
    # KAMUS LOKAL
    # nama_file_csv : CSV       (yang akan di baca)
    # matriks_baru  : Matrix    (hasil membaca csv)

    # Inisialisasi matriks baru
    array_hasil = []
    temp_array = []

    # Mengolah text
    with open(nama_file_txt, 'r') as file:
        count = 0
        valid = True
        for line in file:
            if valid == True:
                if line == '99999999':
                    valid = False
                    return("File kosong")
            else:
                while line != '99999999':
                    count += 1
                    temp_array = append_manual(temp_array,line)
                        
                    if count % 3 == 0:
                        array_hasil = append_manual(array_hasil, temp_array)
                        temp_array = []
        return(array_hasil)


# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSaham(namafile)

print(TXT_Parser(namafile))
array = TXT_Parser(namafile)
array_sorted = insertionSort(array)
for i in range(length_manual(array_sorted)):
    print(array[i][0],end=',')
    print(array[i][1].rstrip(),end=',')
    print(array[i][2])