 
//!FIndPair
//  void findPair(List<int>arr, int target){
//   Set<int>a={};
//   for(int i=0;i<arr.length;i++){
//     // int match = target - arr[i];
//     // if(a.contains(match)){
//     //   print('Pair found: ${match}, ${arr[i]}');
//     //   return;
//     // }
//     for(int j=i+1;j<arr.length;j++){
//       if(arr[i]+arr[j]==target){
//         print('arr= ${arr[i]},${arr[j]}');
//         return;
//       }           m 
//     }
//     a.add(arr[i]);
//   }
//   print('No pair found');
//  }

//  void main(){
//   List<int>numbers=[6, 7, 8, 9, 4, 0];
//   int target=10;
//   findPair(numbers, target);
//  }


findPair(List<int>arr, int target){
  List<List<int>>ar=[];
  for(int i=0;i<arr.length;i++){
    for(int j=i+1;j<arr.length;j++){
      if(arr[i]+arr[j]==target){
        ar.add([arr[i],arr[j]]);
      }
    }
  }
  return ar;
}

void main(){
  List<int>arr=[1,2,3,4,5,6,7,8,9];
  int target=10;
 List<List<int>>result= findPair(arr, target);
 print('${result}');

}