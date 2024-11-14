linearSearch(List<int>arr, int target, int index){
  if(index>=arr.length){
    return -1;
  }
  if(arr[index]==target){
    return index;
  }
  return linearSearch(arr, target, index+1);
}
void main(){
  List<int>arr= [1,23,4,5,6,7,];
  int target=5;
  int result= linearSearch(arr, target, 0);
  if(result!= -1){
    print('at index ${result}');
  }else{
    print('target is not found');
  }
}