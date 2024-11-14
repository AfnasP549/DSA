selectionSort(List<int>arr){
  int n = arr.length;

  for(int i=0; i<n-1; i++){
    int minIndex = i; // Assume the current element is the minimum

  //find the index from unsorted oart
  for(int j= i+1; j<n; j++ ){
    if(arr[j]< arr[minIndex]){
      minIndex = j;
    }
  }
  //min not in current position
  if(minIndex!=i){
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
  }
  return arr;
}

void main(){
  List<int>ar = [6,5,4,3,2,1];
  print(selectionSort(ar));
}