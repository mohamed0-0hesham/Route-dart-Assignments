import 'dart:ffi';
import 'dart:io';

void main(List<String> arguments) {
  // print(calculateSum(10));
  // calculateNumberSum();
  // getNOddNumber();
  //   getFactorial();
  getReversedInteger();
}

int getNumFromUser() {
  int number;
  while (number == null) {
    String read = stdin.readLineSync();
    try {
      number = int.parse(read);
    } catch (e) {
      print("Wrong input type!");
    }
  }
  return number;
}

//1- Write a program to calculate the sum of first 10 natural number
int calculateSum(int n) {
  int sum = 0;
  for (int i = 0; i <= n; i++) {
    sum += i;
  }
  return sum;
}

//2- Write a program takes input number n then display the natural numbers to n and their sum.
void calculateNumberSum() {
  print("Please enter an number ...");
  int numFromUser = getNumFromUser();
  int sum = 0;
  List list = [];
  for (int i = 1; i <= numFromUser; i++) {
    list.add(i);
    sum += i;
  }
  print("The first $numFromUser natural number is :\n"
      "$list\n"
      "The Sum of Natural Number upto $numFromUser terms : $sum");
}

//3- Write a program that takes the input number n and then display the n terms of odd natural numbers and their sum
void getNOddNumber() {
  print("Please enter an number ...");
  int n = getNumFromUser();
  List list = [];
  int sum = 0;
  for (int i = 0; i < n; i++) {
    int value = 1 + (2 * i);
    list.add(value);
    sum += value;
  }
  print("The odd numbers are: $list\n"
      "The Sum of Natural Number upto $n terms : $sum");
}

//4- Write a program to enter the numbers till the user wants and at the end, it should
// display the count of positive, negative and zeros entered
// Hint: First Ask the user how many numbers he wants to check
// Then make a loop that loops till the number he entered
void printNumbersType() {
  print("How many Number you want to check ?");
  int n = getNumFromUser();
  print("Enter $n numbers");
  int postive = 0;
  int negative = 0;
  int zeros = 0;
  for (int i = 0; i < n; i++) {
    int num = getNumFromUser();
    if (num == 0) {
      zeros++;
    } else if (num > 0) {
      postive++;
    } else {
      negative++;
    }
  }
  print(
      "You Entered $postive postive numbers And $negative negative and $zeros Zero");
}

List getListFromUser(int listLength) {
  List list = [];
  for (int i = 0; i < listLength; i++) {
    int n = getNumFromUser();
    list.add(n);
  }
  return list;
}

//5- Write a program to find the factorial value of any number entered through the keyboard.
void getFactorial(){
  print("Please enter an number ...");
  int n = getNumFromUser();
  int factorial = n == 0 ? 1 : n;
  if (n > 1) {
    for (int i = n-1; i > 0; i--) {
      factorial *=i;
    }
  }
  print(factorial);
}

//6- Write a program that takes input from the user as an integer and then outputs the
// number with the digits reversed. For example, if the input is 12345, the output
// should be 54321.

void getReversedInteger() {
  int number;
  String read;
  while (number == null) {
    read = stdin.readLineSync();
    try {
      number = int.parse(read);
    } catch (e) {
      print("Wrong input type!");
    }
  }
  int reversedInteger = 0;
  int size = read.length;
  print("size = $size");
  for (int i = 0; i < read.length; i++) {
    int n = number % 10;
    number = ((number - n) / 10) as int;
    print("n = $number");
    reversedInteger = reversedInteger * 10 + n;
    print("reversedInteger = $reversedInteger");
  }
  print(reversedInteger);
}