String revRecString(String word, int index){
  if(index<0) return '';
  return word[index] + revRecString(word, index-1);
}
void main(){
  print(revRecString('midhulaj', 'midhulaj'.length-1));
}