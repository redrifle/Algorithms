a = [8, 7, 6, 5, 4, 3, 2, 1]

def insertion_sort():
    for i in range(len(a)):
        key = a[i]
        j = i - 1
        while j > -1 and a[j] > key:
            a[j + 1] = a[j]
            j -= 1
        a[j + 1] = key
    return
insertion_sort()
print(a)
