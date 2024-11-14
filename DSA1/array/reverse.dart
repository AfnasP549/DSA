reverse(List<int>arr){
 
  int n=arr.length;
  int temp=0;
  for(int i=0;i<arr.length/2;i++){
    temp=arr[i];
    arr[i]=arr[n-i-1];
    arr[n-i-1]=temp;
  }
  return arr;
}

void main(){
  List<int>arr=[2,3,4,5,6,7,87,8,9];
  List<int>result=reverse(arr);
  print('reversed array is ${result}');
}