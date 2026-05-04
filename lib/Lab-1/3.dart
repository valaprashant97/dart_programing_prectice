// WAP to convert temperature from Fahrenheit to Celsius.
import 'dart:io';
void main(){
  stdout.write("Enter a temperature(F) :");
  double  f = double.parse(stdin.readLineSync()!);

  double c = (f - 32) * 5 / 9;
  print("sum of the two number : ${c}");
}