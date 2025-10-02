#include <iostream>
#include <vector>

// Partition function using Lomuto partition scheme
int partition(std::vector<int> &arr, int low, int high)
{
    int pivot = arr[high]; // Choose the last element as pivot
    int i = low - 1;       // Index of smaller element

    for (int j = low; j < high; ++j)
    {
        if (arr[j] < pivot)
        {
            ++i;
            std::swap(arr[i], arr[j]);
        }
    }
    std::swap(arr[i + 1], arr[high]);
    return i + 1;
}

// Quick Sort function
void quickSort(std::vector<int> &arr, int low, int high)
{
    if (low < high)
    {
        int pi = partition(arr, low, high); // Partition index
        quickSort(arr, low, pi - 1);        // Sort left subarray
        quickSort(arr, pi + 1, high);       // Sort right subarray
    }
}

// Driver code
int main()
{
    std::vector<int> data = {34, 7, 23, 32, 5, 62};
    std::cout << "Original array: ";
    for (int num : data)
        std::cout << num << " ";
    std::cout << "\n";

    quickSort(data, 0, data.size() - 1);

    std::cout << "Sorted array: ";
    for (int num : data)
        std::cout << num << " ";
    std::cout << "\n";

    return 0;
}
