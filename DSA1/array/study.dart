findPair(List<int>arr, int target){
  for(int i=0;i<arr.length;i++){
    for(int j=i+1;j<arr.length;j++){
      if(arr[i]+arr[j]==target){
       
        return  print([arr[i],arr[j]]);
      }
    }
  }
  return null;
}

void main(){
  List<int>arr=[4,5,6,7,8,9];
  int target=10;
  findPair(arr, target);


}