fibonacci(int n){
  if(n<=1){
    return n;
  }
  return fibonacci(n-1) + fibonacci(n-2);
}
void main(){
  int n=6;
  print(fibonacci(n));
}
