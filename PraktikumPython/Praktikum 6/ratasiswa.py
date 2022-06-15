import tulisdata
# Program RataRataSiswa
# Spesifikasi : program yang membaca data siswa dari suatu tempat kursus dari suatu file teks dan
# menuliskan nilai rata-rata setiap siswa ke layar. Nilai rata-rata ditampilkan terurut berdasarkan NoInduk siswa.

# KAMUS
# namafile: string

# ALGORITMA PROGRAM UTAMA

namafile = input()
tulisdata.TulisDataSiswa(namafile)


f = open(namafile, 'r')
array = []

first_line = f.readline()
if first_line == "99999999":
    print("File kosong")
else:
    while first_line != "99999999":
        second_line = f.readline()
        third_line = f.readline()
        pline = (int(first_line),second_line,int(third_line))
        array.append(pline)
        first_line = f.readline()

    array.sort(key=lambda pline: pline[0]) 
    array.append("mark")
    i = 0
    while array[i] != "mark":
        currn = array[i][0]
        sumn = 0
        countn = 0
        while True:
            sumn += array[i][2]
            countn += 1
            i += 1
            if currn != array[i][0]:
                break
        rata = "{:.2f}".format(sumn/countn) 
        print(str(currn) + "=" + str(rata))
        
f.close()