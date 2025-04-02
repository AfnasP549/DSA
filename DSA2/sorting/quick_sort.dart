List<int> quickSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int pivot = arr[arr.length ~/ 2];
  List<int> result = [];  

  result.addAll(quickSort(arr.where((value) => value < pivot).toList()));
  result.addAll(arr.where((value) => value == pivot));
  result.addAll(quickSort(arr.where((value) => value > pivot).toList()));

  return result;
}

void main() {
  List<int> ar = [6, 5, 3, 6, 7, 8, 3];
  print(quickSort(ar)); 
}
