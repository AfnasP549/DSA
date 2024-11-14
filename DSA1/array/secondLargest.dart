findSecondLargest(List<int>arr){
  if(arr.isEmpty){
    return null;
  }
  int Largest=0;
  int SLargest=0;
  for(int i=0;i<arr.length;i++){
    if(arr[i]>Largest){
      SLargest=Largest;
      Largest=arr[i];
    }else if(arr[i]>SLargest && arr[i]<Largest){
      SLargest=arr[i];
    }
  }
  return SLargest;
}

void main(){
  List<int>arr=[3,2,3];
  int result=findSecondLargest(arr);
  print('Second largest value in this array: ${result}');
}