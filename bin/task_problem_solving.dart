import 'dart:io';

void main() {
  print('enter the first number:');
  int n = int.parse(stdin.readLineSync()!);
  print('enter the Second number:');
  int m = int.parse(stdin.readLineSync()!);
  if (n < 1 || m >= 1000000 || n > m) {
    print('Invalid input, be sure that n >=1,n<m,m<=1000000');
  } else {
    print('prim numbers between $n and $m : ');
    printPrim(n, m);
  }
}

void printPrim(int n, int m) {
  bool foundPrime = false;
  for (int i = n + 1; i < m; i++) {
    if (isPrime(i)) {
      print(i);
      foundPrime = true;
    }
  }
  if (!foundPrime) {
    print('There is no prime code between $n and $m');
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}