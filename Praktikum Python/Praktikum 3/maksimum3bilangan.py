# NIM / Nama    : 16521209 / Alisha Listya Wardhani
# Tanggal       : 2 Maret 2022
# Deskripsi     : Soal Praktikum #1.1

# KAMUS 
# A,B,C: integer

# PROGRAM FUNGSI
# Input
A= int(input())
B= int(input())
C= int(input())

# Kemungkinan
# A B C
# A C B
# B A C
# B C A
# C A B
# C B A

if (A>=B) and (A>=C):
    print(A)
elif (B>=A) and (B>=C):
    print(B)
elif (C>=A) and (C>=B):
    print(C)
