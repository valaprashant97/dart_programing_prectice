// WAP to check if a given positive integer is an ugly number (a number whose
// only prime factors are 2, 3, and 5). Example: Input: n = 6, Output: true (6 = 2 × 3);
// Input: n = 14, Output: false (14 includes the prime factor 7).

import 'dart:io';

bool isUgly(int n) {
  if (n <= 0) return false; // Ugly numbers are positive only

  // Keep dividing n by 2, 3, and 5
  List<int> factors = [2, 3, 5];
  for (int f in factors) {
    while (n % f == 0) {
      n ~/= f; // integer division
    }
  }

  return n == 1;
}

void main() {
  stdout.write("Enter a number :");
  int n = int.parse(stdin.readLineSync()!);

  print("Is $n an Ugly Number? -> ${isUgly(n)}");
}