 bubbleSort(List<int> arr){
  int n=arr.length;
  int temp = 0;
  for(int i=0; i<n; i++){
    for(int j=0; j<n-i-1; j++){
    if(arr[j]>arr[j+1]){
        temp = arr[j];
      arr[j] = arr[j+1];
      arr[j+1] = temp;
    }
    }
  }
}
void main(){
  List<int>arr = [5,4,3,2,3,1];
  bubbleSort(arr);
  print('sorted array is ${arr}');
  
}