def length_manual(list):
    # KAMUS LOKAL
    # list : list
    # length : int

    # ALGORITMA
    # Inisialisasi panjang list = 0
    length = 0                  
    # Looping sebanyak list
    for i in (list):
        length += 1
    return length

def get_max(arr, index_start):
    max = arr[index_start]
    for i in range(index_start+1,length_manual(arr)):
        if arr[i]> max:
            max = arr[i]
    return max

# mendapatkan maksimum array dari indeks indeks_start sampai selesai
def get_idx(arr, number):
    for i in range(length_manual(arr)):
        if arr[i] == number:
            return i

# mendapatkan index dari suatu angka dalam array
def swap(array, indeks_1, indeks_2):
# swap elemen array indeks 1 dengan indeks 2
    array[indeks_1], array[indeks_2] = array[indeks_2], array[indeks_1]
    return array

def sort(arr):
    for i in range(len(arr)):
        maxArr = get_max(arr, i)
        maxIdx = get_idx(arr, maxArr)
        swap(arr, i, maxIdx)
    print(arr)

n = int(input())
arr = [0 for i in range(n)]

for i in range(n):
    arr[i] = int(input())  

sort(arr)