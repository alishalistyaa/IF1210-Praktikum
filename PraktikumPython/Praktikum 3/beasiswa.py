# Nama  : Alisha Listya Wardhani
# NIM   : 16521209


# soree kaak ini bukan soal saya :D

ip = float(input())
pot = float(input())

if ip >= 3.5:
    print(4)
elif ip < 3.5 and pot < 1:
    print(1)
elif pot >= 1 and pot < 5 and ip <3.5:
    if ip >= 2:
        print(3)
    if ip < 2:
        print(2)
else: print(0)