import tulisdata

# KAMUS
# namafile: string

# ALGORITMA PROGRAM UTAMA
namafile = input()
tulisdata.TulisDataSiswa(namafile)

f = open(namafile,'r')
array = []

line1 = f.readline()
if line1 == "99999999":
    print("File kosong")
else:
    while line1 != "99999999":
        line2 = f.readline()
        line3 = f.readline()
        temp = (int(line1),line2,int(line3))
        array.append(temp)
        line1 = f.readline()

    array.sort(key=lambda temp: temp[0])
    for i in range(len(array)):
        print(array[i][0],end=",")
        print(array[i][1].replace('\n',''),end=',')
        print(array[i][2])
        
f.close()