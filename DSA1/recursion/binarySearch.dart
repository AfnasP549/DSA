 binarySearch(List<int>arr, int target, int start, int end){
  if(start>end){
    return -1;
  }
  int mid= start+(end-start) ~/2;

  if(arr[mid]==target){
    return mid;
  }

  if(arr[mid]>target){
    return binarySearch(arr,target,start,mid-1);
  }else{
    return binarySearch(arr,target,mid+1,end);
  }

}

void main(){
  List<int>arr=[1,2,3,4,5,6,7,8,9];
  int target=0;

  int result= binarySearch(arr, target, 0, arr.length-1);

  if(result!=-1){
    print('target found at index ${result}');
  }else{
    print('target not found');
  }
}