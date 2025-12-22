import 'dart:io';

void main(List<String> arguments) {
  isNumberEven();
}


void isNumberEven() {
  //Write a Program that takes a number from user then prints “yes” if number is even and “no” if number is odd
  while (true) {
    String read = stdin.readLineSync();
    if (read != null && read.isNotEmpty) {
      try {
        int x = int.parse(read);
        String y = x % 2 == 0 ? "yes" : "No";
        print(y);
      } catch (e) {
        print("You have to enter an Integer");
      }
    }
  }
}
