
# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 2 Maret 2022
# Deskripsi     : Soal Praktikum #1.1

# KAMUS 
# num           : integer
# char1, char2 : char

# PROGRAM FUNGSI
# Input
num = int(input())
char1 = str(input()[0])
char2 = str(input()[0])

# Def fungsi
def awalakhir(num,char1):
    for j in range(0,num):
        if j == 0:
            print(char1, end="")
        elif j == (num-1):
            print(char1)
        else: print(char1, end="")

def tengah(num,char1,char2):
    for k in range(0,num):
        if k == 0:
            print(char1, end="")
        elif k == (num-1):
            print(char1)
        else: print(char2, end="")

# Penjalanan Program
if char1 == char2:
    print("Masukan tidak valid")
elif num > 0:
    for i in range(0,num):
        if i == 0 or i == (num-1):
            awalakhir(num, char1)
        else: tengah(num,char1,char2)
    if num == 1: print()
else:
    print("Masukan tidak valid")