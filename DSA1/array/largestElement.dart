findLargestElement(List<int>arr){
  if(arr.isEmpty){
    return null;
  }  

  int maxValue=arr[0];
  for(int i=0;i<arr.length;i++){
    if(arr[i]>maxValue){
      maxValue=arr[i];
    }
  }
  return maxValue;
}

void main(){
  List<int>arr=[2,4,5,6,98];
  int result = findLargestElement(arr);
  print("maximum value: ${result}");
}