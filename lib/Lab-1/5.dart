// WAP that reads a number in meters, converts it to feet, and display the result.
// Body Mass Index (BMI) is measure of health on weight. It can be calculated by taking your
// weight in kilograms and dividing by square of your height in meters. Write a program that
// prompts the user to enter a weight in pounds and height in inches and display the BMI.
// Note: 1 pound=.45359237 Kg and 1 inch=0.0254 meters

import 'dart:io';
void main(){
  stdout.write("Enter a Meters to convert in Feet : ");
  double meters = double.parse(stdin.readLineSync()!);

  double feet = meters * 3.28084;

  print("$meters = $feet");

  stdout.write("Enter a weight in pounds : ");
  double weightPounds = double.parse(stdin.readLineSync()!);

  stdout.write("Enter a hight in inches : ");
  double heightInches = double.parse(stdin.readLineSync()!);

  double weightKg = weightPounds * 0.45359237;
  double heightMeters = heightInches * 0.0254;

  double bmi = weightKg / (heightMeters * heightMeters);

  print("Weight: $weightPounds pounds ($weightKg kg)");
  print("Height: $heightInches inches ($heightMeters m)");
  print("BMI = ${bmi.toStringAsFixed(2)}");
}