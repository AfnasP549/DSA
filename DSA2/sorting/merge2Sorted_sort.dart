List<int> mergeSort(List<int> arr1, List<int> arr2) {
  //traverse in arr1
  int i = 0;
  //traverse in arr2
  int j = 0;
  List<int> result = [];

  // Compare and merge elements from both arrays
  while (i < arr1.length && j < arr2.length) {
    if (arr1[i] < arr2[j]) {
      result.add(arr1[i]);
      i++;
    } else {
      result.add(arr2[j]);
      j++;
    }
  }

  // // Add remaining elements from arr1, if any
  // while (i < arr1.length) {
  //   result.add(arr1[i]);
  //   i++;
  // }

  // // Add remaining elements from arr2, if any
  // while (j < arr2.length) {
  //   result.add(arr2[j]);
  //   j++;
  // }

  return result+arr2;
}

void main() {
  List<int> arr1 = [1, 2, 3, 4, 5, 8]; // Corrected the list to be sorted
  List<int> arr2 = [12, 34, 86];
  print(mergeSort(arr1, arr2));  // Output: [1, 2, 3, 4, 5, 6, 8, 12, 34, 86]
}
