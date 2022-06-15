import tulisdata
    
def sort_insertion_type(arr):
    for i in range(1, len(arr)):
        temp = arr[i]
        position = i-1
        while (position>=0 and temp[0]<arr[position][0]):
            arr[position+1] = arr[position]
            position -= 1
        arr[position+1] = temp

namafile = input()
tulisdata.TulisDataSiswa(namafile)

f = open(namafile,'r')
array = []
# print (f)

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

    sort_insertion_type(array)
    for i in range(len(array)):
        print(array[i][0],end=",")
        print(array[i][1].rstrip(),end=',')
        print(array[i][2])
        
f.close()