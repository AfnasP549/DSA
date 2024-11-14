int linearSearch(List<int> arr, int target) {
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == target) {
      return i; 
    }
  }
  return -1; 
}

void main() {
  List<int> numbers = [4, 2, 7, 1, 9, 3];
  int target = 7;

  int result = linearSearch(numbers, target);
  if (result != -1) {
    print("Target found at index: $result");
  } else {
    print("Target not found.");
  }
}
