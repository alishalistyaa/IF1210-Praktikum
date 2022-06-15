# Alisha Listya Wardhani
# 16521209



# P.S. Halo kaak, ini bukan soal saya

suhu = float(input())
kode = str(input()[0])

if kode== "R":
    hasil = 0.8*suhu
elif kode == "F":
    hasil = (9/5*suhu)+32
elif kode == 'K':
    hasil = suhu + 273.15

print('{:.2f}'.format(hasil))