mergeSort(List<int>arr){ 
  if(arr.length<=1){
    return arr;
  }
  int mid = arr.length ~/2;
  List<int> left = mergeSort(arr.sublist(0, mid));
  List<int> right = mergeSort(arr.sublist(mid));

  return merge(left, right);
}
merge(left, right){
  List<int> result=[];
  int i=0;
  int j=0;

  while(i<left.length && j<right.length){
    if(left[i]<right[j]){
      result.add(left[i]);
      i++;
    }else{
      result.add(right[j]);
      j++;
    }
  }
  return result + left.sublist(i) + right.sublist(j);
}
void main(){
  List<int>ar = [6,5,4,3,2,1];
 print(mergeSort(ar)) ;
}