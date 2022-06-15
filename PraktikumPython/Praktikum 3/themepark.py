# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 2 Maret 2022
# Deskripsi     : Soal Praktikum #3.1

# KAMUS 
# t,b : integer

# PROGRAM FUNGSI
#INPUT
t = int(input())
b = int(input())
k = int(input())

#PROGRAM
if t <=100 and b <= 150:
    if k ==1: print("TRUE")
    elif k ==2 and b >30:
        print("TRUE")
    else: print("FALSE")
elif b >150 and t <=100:
    if k ==2 : print("TRUE")
    else: print("FALSE")
elif b > 150 and t > 100 and t <= 200:
    if k==2 or k == 3: print("TRUE")
    else : print("FALSE")
elif t > 100 and b <= 150:
    if k == 1: print("FALSE")
    elif k ==0: print("FALSE")
    else: print("TRUE")
elif k == 0: print("TRUE")
else: print("FALSE")