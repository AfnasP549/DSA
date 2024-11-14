insertionSort(List<String>arr){
  int n = arr.length;

  for(int i= 1; i<n; i++){
    int j = i-1;
    String current = arr[i];
    while(j>=0 && current.compareTo(arr[j])<0){
      arr[j+1]= arr[j];
      j--;
    }
    arr[j+1] = current;
  }
  return arr;
}

void main(){
  List<String>arr = ['b','d','c','a'];
  print(insertionSort(arr));
}