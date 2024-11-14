sum(List<int>arr){
  if(arr.isEmpty){
    return null;
  }
  int sum=0;
  for(int i=0;i<arr.length;i++){
    sum=sum+arr[i];
  }
  return sum;
}
void main(){
  List<int>arr=[3,4,56,7,10];
  int result= sum(arr);
  print('sum= ${result}');
}