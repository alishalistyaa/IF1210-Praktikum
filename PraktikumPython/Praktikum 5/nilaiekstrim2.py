N = int(input())
arr = [0 for i in range(N)]

for i in range(N):
    inputN = int(input())
    arr[i] = inputN
maks = arr[i]
min = arr[i]

X = int(input())
avaiX = False
for i in range(N):
    if (min > arr[i]):
        min = arr[i]
    if (maks < arr[i]):
        maks = arr[i]
    if (X == arr[i]):
        avaiX = True

ekstrem = False
if avaiX:
    if (X == maks):
        print ("maksimum")
        ekstrem = True
    if (X == min):
        print ("minimum")
        ekstrem = True
    if not (ekstrem):
        print ("N#A")
else:
    print (X, "tidak ada")