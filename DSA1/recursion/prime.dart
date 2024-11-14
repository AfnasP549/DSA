bool isPrimeHelper(int n, int i) {
  if (i == 1) {
    return true;
  }

  if (n % i == 0) {
    return false;
  }

  return isPrimeHelper(n, i - 1);
}

bool isPrime(int n) {
  if (n <= 1) {
    return false;
  }

  return isPrimeHelper(n, n - 1);
}

void main() {
  int number = 13;
  if (isPrime(number)) {
    print('$number is a prime number.');
  } else {
    print('$number is not a prime number.');
  }
}
