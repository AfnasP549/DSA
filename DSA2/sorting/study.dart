quickSort(List<int>arr){
  if(arr.length<=1){
    return arr;
  }

  int pivot  = arr[arr.length~/2];
  List<int>less= [];
  List<int>equal= [];
  List<int> greater = [];

  for(var value in arr){
    if(value<pivot){
      less.add(value);
    }else if (value == pivot){
      equal.add(value);
    }else{
      greater.add(value);
    }
  }

  return quickSort(less) + equal + quickSort(greater);
}
void main(){
  List<int>arr = [5,4,6,73,5,1];
  print(quickSort(arr));
}