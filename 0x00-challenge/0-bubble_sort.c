#include "sort.h"

/**
 *bubble_sort - Implementation of the bubble_sort sorting
 *algorithm in ascending order
 *
 *@array: Array to be sorted
 *@size: Size of the array
 *Return: Nothing
 */
void bubble_sort(int *array, size_t size)
{
size_t i;
int tmp;
for (i = 0; i < size - 1; i++)
{
if (array[i] > array[i + 1])
{
tmp = array[i];
array[i] = array[i + 1];
array[i + 1] = tmp;
print_array(array, size);
}
}
if (is_sorted_list(array, size) != 0)
bubble_sort(array, size);
return;
}

/**
 *is_sorted_list - Checks if an array of integeres is sorted
 *
 *@array: The array of integers
 *@size: Size of array
 *Return: Zero if sorted or 1 if not sorted
 */
int is_sorted_list(int *array, size_t size)
{
size_t i;
if (size < 2)
return (0);
for (i = 0; i < size - 1; i++)
{
if (array[i] > array[i + 1])
return (1);
}
return (0);
}
