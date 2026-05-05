// WAP to check whether the given number is positive or negative.
import 'dart:io';
void main(){
  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  if(num>0){
    print("The number is positive");
  }else{
    print("The number is negative");
  }
}