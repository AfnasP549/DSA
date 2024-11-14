factorial(int n){
    if(n==0){
      return 1;
    }
    return n* factorial(n-1);

}
void main(){
  int number=4;
  int result= factorial(number);
  print('factorial of ${number} is ${result}');
}