binarySearch(List<int>arr, int target, int start, int end){
  if(start>end){
    return -1;
  }
  int mid =( start + end )~/2;
  if(arr[mid]==target){
    return mid;
  }
  if(arr[mid]>target){
    return binarySearch(arr, target, 0, mid-1);
  }else if(arr[mid]<target){
    return binarySearch(arr, target, mid+1, end);
  }
}
void main(){
  List<int>arr=[2,3,4,5,6,7,8,9];
  int target = 4;
  int result = binarySearch(arr, target, 0, arr.length-1);
  if(result!=-1){
    print('$target is at $result index');
  }else{
    print('not in the list');
  }

}



 