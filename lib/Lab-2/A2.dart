// WAP to perform Addition, Subtraction, Multiplication, Division based on user choice using if,
// if..else..if, & switch.
import 'dart:io';

void main() {
  print("Enter first number:");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  print("Select operation:");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");

  int choice = int.parse(stdin.readLineSync()!);

  // Using if
  if (choice == 1) {
    print("Result (if): ${num1 + num2}");
  }

  // Using if..else if
  if (choice == 2) {
    print("Result (if..else if): ${num1 - num2}");
  } else if (choice == 3) {
    print("Result (if..else if): ${num1 * num2}");
  }

  // Using switch
  switch (choice) {
    case 4:
      if (num2 != 0) {
        print("Result (switch): ${num1 / num2}");
      } else {
        print("Division by zero is not allowed.");
      }
      break;
    default:
      if (choice != 1 && choice != 2 && choice != 3) {
        print("Invalid choice.");
      }
  }
}