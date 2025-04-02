// reverse(String s){
//   return s.split('').reversed.join('');
// }
// void main(){
//   print(reverse('hello'));
// }

String reversedString(String word){
  String reversed='';
  for(int i=(word.length-1); i>=0;i--){
    reversed = reversed+word[i];
  }
  return reversed;
}
void main(){
print(reversedString('afnas'));

}

