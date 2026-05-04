// WAP to Print addition of 2 number.
import 'dart:io';

void main(){
  stdout.write("Enter a nember :");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Enter a nember :");
  int b = int.parse(stdin.readLineSync()!);

  print("sum of the two number : ${a+b}");
}