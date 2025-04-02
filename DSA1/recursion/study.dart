reverse(String word, int index){
  if(index<0){
    return '';
  }
  return word[index] + reverse(word, index-1);
}
void main(){
  String word='asd';
  print(reverse(word, word.length-1));
}