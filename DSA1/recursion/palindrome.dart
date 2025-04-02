bool isPalindrome(String word, int start, int end){
  if(start>=end){
    return true;
  }
  if(word[start]!=word[end]){
    return false;
  }
  return isPalindrome(word, start+1, end-1);
}
void main(){
  String word = 'arnaa';
  if(isPalindrome(word, 0, word.length-1)){
    print('$word is palindrome');
  }else{
    print('$word is not palindrome');
  }
}
