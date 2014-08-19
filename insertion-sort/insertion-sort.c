#include <stdio.h>

int main(void)
{
    int array[8] = {8, 7, 6, 5, 4, 3, 2, 1};
    int n = sizeof(array) / sizeof(int);
    int i, j, key;

    for (i = 1; i < n; ++i)
    {
        key = array[i];
        j = i - 1;

        while (j >= 0 && array[j] > key)
        {
            array[j + 1] = array[j];
            j -= 1;
        }
        array[j + 1] = key;
    }
    for (i = 0; i < n; ++i)
        printf("%d\n", array[i]);
    return 0;
}
