#include <stdio.h>

int merge(int a[], int p, int q, int r)
{
    int n1 = q - p + 1;
    int n2 = r - q;
    int left[n1 + 1];
    int right[n2 + 1];
    int i, j, k, t;

    for (i = 0; i < n1; ++i)
        left[i] = a[p + i];

    for (j = 0; j < n2; ++j)
        right[j] = a[q + j + 1];

    i = 0;
    j = 0;

    for(k = p; k <= r; ++k)
    {
        if (left[i] <= right[j])
        {
            a[k] = left[i];
            ++i;
        }
        else
        {
            a[k] = right[j];
            ++j;
        }

        if (i == n1)
        {
            ++k;
            while (j < n2)
            {
                a[k] = right[j];
                ++k;
                ++j;
            }
            break;
        }
        else if (j == n2)
        {
            ++k;
            while (i < n1)
            {
                a[k] = left[i];
                ++k;
                ++j;
            }
            break;
        }
    }

    return 0;
}

int merge_sort(int a[], int p, int r)
{
    if (p < r)
    {
        int q = (p + r) / 2;
        merge_sort(a, p, q);
        merge_sort(a, q + 1, r);
        merge(a, p, q, r);
    }
    return 0;
}

int main(void)
{
    int a[8] = {1, 2, 3, 4, 5, 6, 7, 8};
    int n = (sizeof(a) / sizeof(int)) - 1, i;
    merge_sort(a, 0, n);

    for (i = 0; i < n + 1; ++i)
      printf("%d\n", a[i]);
    return 0;
}
