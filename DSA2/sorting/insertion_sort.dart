insertionSort(List<int>arr){
  int n = arr.length;

  for(int i=1; i<n; i++){
    int j = i-1;
    int current = arr[i];
    while(j>=0 && current<arr[j]){
      arr[j+1] = arr[j];
      j--;
    }
    arr[j+1]= current;
  }
  return arr;
}
void main(){
  List<int>arr = [5,4,3,2,1];
  print(insertionSort(arr));
}