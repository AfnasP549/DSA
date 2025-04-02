// findSecndLrg(List<int>arr){
//   int Lrg=0;
//   int Scn=0;
//   for(int i=0;i<arr.length;i++){
//     if(arr[i]>Lrg){
//       Scn=Lrg;
//       Lrg=arr[i];
//     }else if(arr[i]>Scn && arr[i]<Lrg){
//       Scn=arr[i];
//     }
//   }
//   return Scn;
// }
// void main(){
//   List<int>arr=[2,3,4,5,6];
//   print(findSecndLrg(arr));
// }

//!Largest
// largest(List<int>arr){
//   int lrg=0;
//   for(int i=0; i<arr.length;i++){
//     if(arr[i]>lrg){
//       lrg=arr[i];
//     }
//   }
//   return lrg;
// }
// void main(){
//   List<int>arr=[2,3,4,5,6];
//   print(largest(arr));
// }

//!sum
// import 'sum.dart';

// sumofArr(List<int>arr){
//   int sum=0;
//   for(int i=0; i<arr.length;i++){
//     sum=sum+arr[i];
//   }
//   return sum;
// }



// void main(){
//   List<int>arr=[1,2,3,4];
//   print(sum(arr));
// }

findSLargest(List<int>arr){
  int largest=0;
  int Slargest=0;
  for(int i=1; i<arr.length; i++){
    if(arr[i]>largest){
      Slargest = largest;
      largest = arr[i];
    }else if(arr[i]>Slargest && arr[i]<largest){
      Slargest = arr[i];
    }
  }
  return Slargest;
}
void main(){
  List<int> arr = [3,4,5,2,5,7,8,9];
  int result = findSLargest(arr);
  print('largest value is : $result');
}