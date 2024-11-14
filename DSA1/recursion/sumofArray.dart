 findSum(List<int>arr, int index){
  if(index<0){
    return 0;
  }
  return arr[index]+ findSum(arr, index-1);
}
void main(){
  List<int>arr= [1,2,3,4,5,6,7,8,9];
  int result= findSum(arr, arr.length-1);
  print('${result}');
}