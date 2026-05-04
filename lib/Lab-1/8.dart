// WAP to find all the prime numbers within a given range [start, end]. Example: Input: start = 10,
// end = 20, Output: [11, 13, 17, 19]; Input: start = 1, end = 10, Output: [2, 3, 5, 7].
import 'dart:io';
bool isPrime(int n) {
  if (n <= 1) return false;

  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  List<int> primeList = [];

  stdout.write("Enter start: ");
  int st = int.parse(stdin.readLineSync()!);

  stdout.write("Enter end: ");
  int en = int.parse(stdin.readLineSync()!);

  for (int i = st; i <= en; i++) {
    if (isPrime(i)) {
      primeList.add(i);
    }
  }

  print("Prime numbers: $primeList");
}