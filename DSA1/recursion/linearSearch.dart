linearSearch(List<int>arr, int target, int index){
  if(index>=arr.length){
    return 0;
  }
  if(arr[index]==target){
    return index;
  }
  return linearSearch(arr, target, index+1);
}
void main(){
  List<int>arr=[1,2,3,4,5,6,7,8];
  int target= 6;
  int result = linearSearch(arr, target, 0);
  if(result!=0){
    print('$target is int $result index');
  }
  else{
    print('$target is not in this list');
  }
}

