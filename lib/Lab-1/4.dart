// WAP to find percentage of 5 subject.

import 'dart:io';
void main(){
  double sum = 0;
  stdout.write("enter a number of subject : ");
  int subNum = int.parse(stdin.readLineSync()!);

  for(int i = 0;i < subNum ; i++){
    stdout.write("enter a number of subject : ");
    double marks = double.parse(stdin.readLineSync()!);
    sum = sum + marks;
  }
  double pr = sum/subNum;

  print("Percentage = $pr %");
}