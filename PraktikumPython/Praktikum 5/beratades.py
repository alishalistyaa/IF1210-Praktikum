def validasi(x):
    if x == -999:
        return True
    else:
        return False

berat=int(input())
arrayberat=[]
if berat == -999:
    print("Data kosong")
else:
    arrayberat=[berat]
    while not berat == -999:
        berat=int(input())
        arrayberat.append(berat)
        loop=validasi(berat)
    arrayberatvalid =[]
    for i in range (len(arrayberat)):
        if 30<=arrayberat[i]<=200:
            arrayberatvalid.append(arrayberat[i])


    less50=0
    more100=0
    total=0
    avg=0
    if len(arrayberatvalid)==0:
        print("Data kosong")
    else:
        for i in range (len(arrayberatvalid)):
            if arrayberatvalid[i]<=50:
                less50+=1
            elif arrayberatvalid[i] >=100:
                more100+=1
            total = total + arrayberatvalid[i]

        avg = total/len(arrayberatvalid)
        print(len(arrayberatvalid))
        print(less50)
        print(more100)
        print(round(avg))