// WAP to print your name in console.
import 'dart:io';
void main(){
  stdout.write("Enter a name : ");
  String? name = stdin.readLineSync();

  print("you entered name is $name");
}