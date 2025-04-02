// bool isPalindrome(String s){
//   return s==s.split('').reversed.join('');
// }
// void main(){
//   print(isPalindrome('car'));
// }

//!palindrome in dart
import 'dart:io';
void main(){
  stdout.write('Enter a word');
  String? word =stdin.readLineSync();

  if(word!=null){
    int flag=0;
    int length = word.length;

    for(int i=0; i<length;i++){
      if(word[i]==word[length-i-1]){
        flag=1;
      }else{
        flag=0;
      }
    }
    if(flag==1){
      print('it is PALINDROME');
    }else{
      print('Not palindrome');
    }
  }
}