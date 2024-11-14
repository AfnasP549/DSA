mergeSort(List<String>arr){
  if(arr.length<=1){
    return arr;
  }
  int mid = arr.length~/2;
  List<String>left = mergeSort(arr.sublist(0, mid));
  List<String>right = mergeSort(arr.sublist(mid));

 

  List<String>result = [];
  int i=0;
  int j=0;
  while(i<left.length && j<right.length){
    if(left[i].compareTo(right[j]) < 0){
      result.add(left[i]);
      i++;
    }else{
      result.add(right[j]);
      j++;
    }
  }
 result.addAll(left.sublist(i));
 result.addAll(right.sublist(j));

 return result;
}
void main(){
  List<String>ar=['Z', 'D','a','b','A','s','m'];
  print(mergeSort(ar));
}