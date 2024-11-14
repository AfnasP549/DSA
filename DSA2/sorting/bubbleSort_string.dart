bubbleSortString(List<String>arr){
  int n= arr.length;
  String temp;

  for(int i=0; i<n; i++){
    for(int j=0; j<n-i-1; j++){
      if(arr[j].compareTo(arr[j+1])>0){
        temp= arr[j];
        arr[j] = arr[j+1];
        arr[j+1] = temp;
      }
    }
  }
  return arr;
}
void main(){
  List<String>arr= ['d','c','b','a'];
  print(bubbleSortString(arr));
}