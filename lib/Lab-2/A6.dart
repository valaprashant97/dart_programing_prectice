// WAP to make a Simple Calculator using switch...case
import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator (+, -, *, /): ");
  String choice = stdin.readLineSync()!;

  switch (choice) {
    case '+':
      print("Result = ${num1 + num2}");
      break;

    case '-':
      print("Result = ${num1 - num2}");
      break;

    case '*':
      print("Result = ${num1 * num2}");
      break;

    case '/':
      if (num2 != 0) {
        print("Result = ${num1 / num2}");
      } else {
        print("Error: Division by zero");
      }
      break;

    default:
      print("Invalid Operator");
  }
}