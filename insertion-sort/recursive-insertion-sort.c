/*
 * Recursive version of the insertion sort algorithm.
 */

#include <stdio.h>

int sort(int array[], int n)
{
    int j, key;

    if (n > 0)
    {
        sort(array, n - 1);
        key = array[n];
        j = n - 1;

        while (j >= 0 && array[j] > key)
        {
            array[j + 1] = array[j];
            j -= 1;
        }
        array[j + 1] = key;
    }
    return 0;
}

int main(void)
{
    int array[8] = {8, 7, 6, 5, 4, 3, 2, 1};
    int n = sizeof(array) / sizeof(int), i;

    sort(array, n - 1);

    for (i = 0; i < n; ++i)
        printf("%d\n", array[i]);

    return 0;
}
