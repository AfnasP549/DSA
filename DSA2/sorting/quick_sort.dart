quickSort(List<int>arr){
  if(arr.length<=1){
    return arr;
  }
  int pivot = arr[arr.length ~/2];
  List<int> less =[];
  List<int> equal = [];
  List<int> greater = [];

  for(int value in arr){
    if(value<pivot){
      less.add(value);
    }else if(value==pivot){
      equal.add(value);
    }else{
      greater.add(value);
    }

  } 
  return  quickSort(greater) + equal +  quickSort(less);
}

void main(){
  List<int>ar=[6,5,3,6,7,8,3];
  print(quickSort(ar));
}