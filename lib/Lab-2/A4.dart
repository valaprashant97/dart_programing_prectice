// WAP to read marks of five subjects. Calculate percentage and print class accordingly. Fail
// below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60
// to 70, Distinction if more than 70.

import 'dart:io';

void main() {
  double total = 0;

  for (int i = 1; i <= 5; i++) {
    stdout.write("Enter marks of subject $i: ");
    double marks = double.parse(stdin.readLineSync()!);
    total += marks;
  }

  double percentage = total / 5;
  print("Percentage = $percentage");

  if (percentage < 35) {
    print("Result: Fail");
  } else if (percentage >= 35 && percentage < 45) {
    print("Result: Pass Class");
  } else if (percentage >= 45 && percentage < 60) {
    print("Result: Second Class");
  } else if (percentage >= 60 && percentage < 70) {
    print("Result: First Class");
  } else {
    print("Result: Distinction");
  }
}