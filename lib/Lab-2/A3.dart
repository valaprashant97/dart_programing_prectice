// WAP to find out largest number from given three numbers without using Logical Operator.
// WAP to check whether the given number is positive or negative.
import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  int num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    if (num1 > num3) {
      print("Number $num1 is largest");
    } else {
      print("Number $num3 is largest");
    }
  } else {
    if (num2 > num3) {
      print("Number $num2 is largest");
    } else {
      print("Number $num3 is largest");
    }
  }
}