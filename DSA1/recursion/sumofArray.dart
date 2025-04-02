sumOfArr(List<int>arr, int index){
  if(index<0) return 0;
  return arr[index]+sumOfArr(arr, index-1);
}
void main(){
  List<int>arr=[1,2,3,4,5];
  print(sumOfArr(arr, arr.length-1));
}