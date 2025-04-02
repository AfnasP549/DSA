// import 'dart:io';

// void main(){
//   print('Enter a name');
//   String? word = stdin.readLineSync();

//   if(word!=null){
//     int flag=0;
//     int l = word.length;

//     for(int i=0; i< l ; i++){
//       if(word[i]==word[l-i-1]){
//         flag=1;
//       }else{
//         flag=0;
//       }
//     }
//     if(flag==1){
//       print('It is palindrome');
//     }else{
//       print('It is not');
//     }
//   }
// }

import 'dart:io';

reverseString(String word){
  String reverse = '';
  for(int i=(word.length-1); i>=0; i--){
    reverse = reverse + word[i];
  }
  return reverse;
}
