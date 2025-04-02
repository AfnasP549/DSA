bool isPrime(int n, int divisor){
 if(n<2){
  return false;
 }
 if(divisor==1){
  return true;
 }
 if(n % divisor == 0){
  return false;
 }
 return isPrime(n, divisor-1);
}
void main(){
  int num = 10;
  if(isPrime(num, num-1)){
    print('$num is prime');
  }else{
    print('$num is not prime');
  }
}

  
  
