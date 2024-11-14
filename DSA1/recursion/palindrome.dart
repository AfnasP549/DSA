
bool ispalinsrome(String s, int start, int end){
  if(start>=end){
    return true;
  }
  if(s[start]!=s[end]){
    return false;
  }
  return ispalinsrome(s, start+1, end-1);
}
void main(){
  String s="malayalam";
  bool result= ispalinsrome(s, 0, s.length-1);
  print(result);
}