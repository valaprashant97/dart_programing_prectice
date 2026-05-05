// WAP to find out largest number from given 3 numbers using conditional operator.
import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter third number: ");
  int num3 = int.parse(stdin.readLineSync()!);

  int largest = (num1 > num2)
      ? (num1 > num3 ? num1 : num3)
      : (num2 > num3 ? num2 : num3);

  print("Largest number is: $largest");
}