# Nama  : Alisha Listya Wardhani
# NIM   : 16521209
# Kelas : K02

# Input
N = str(input())
tmp = ""
a = "" # alas
t = "" # tinggi

# Mengidentifikasi alas dan tinggi
for char in N:
    if (char == " "):
        a = int(tmp)
        tmp = ""
    else: tmp += char
t = int(tmp)

# Algoritma
if (a>0 and t>0):
    luas = round(0.5 * a * t)
    print(luas)
else:
    print("Alas dan tinggi harus > 0")