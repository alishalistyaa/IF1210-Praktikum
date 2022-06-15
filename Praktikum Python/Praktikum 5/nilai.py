

nilai = int(input())
if(nilai == - 9999):
    print("Data nilai kosong")
else:
    total = 0
    lulus = 0
    tdklulus = 0
    nilaitotal = 0

    while(nilai != -9999):
        if(nilai >= 0 and nilai <= 100):
            nilaitotal += nilai
            total += 1

            if(nilai >= 40):
                lulus +=1
            else:
                tdklulus +=1
        nilai = int(input())
    if(total == 0):
        print(0)
    else:
        print(total)
        print(lulus)
        print(tdklulus)
        rata = nilaitotal / total
        print("%.2f" % rata)