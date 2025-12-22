import 'dart:io';

void main(List<String> arguments) {
  isEvenNumber();
  isEligibleForCastingVote();
  isVowel();
  getMinAndMax();
}

//Write a Program that takes a number from user then prints “yes” if number is even and “no” if number is odd
void isEvenNumber() {
  print("Please enter an number ...");
  String read = stdin.readLineSync();
  if (read != null && read.isNotEmpty) {
    try {
      int x = int.parse(read);
      String y = x % 2 == 0 ? "yes" : "No";
      print(y);
    } catch (e) {
      print("You have to enter an Integer");
      isEvenNumber();
    }
  } else {
    print("You have to enter an Integer");
    isEvenNumber();
  }
}

void sortNumber() {
  print("enter three floating-point numbers to sorted number...");
  List list = [];
  while (list.length < 3) {
    String read = stdin.readLineSync();
    if (read != null && read.isNotEmpty) {
      try {
        double x = double.parse(read);
        list.add(x);
      } catch (e) {
        print(
            "Wrong input type, Please enter the floating-point numbers only.");
      }
    }
  }
// sort
}

//Write a program to read the age of a candidate from user and determine whether it is eligible for
// casting his/her own
// Hint if age >=21 then it eligible for casting vote
void isEligibleForCastingVote() {
  print("Please enter Your age...");
  String read = stdin.readLineSync();
  if (read != null && read.isNotEmpty) {
    try {
      int age = int.parse(read);
      String y = age >= 21
          ? "Congratulation! You are eligible for casting your vote"
          : "No You aren't eligible for casting your vote";
      print(y);
    } catch (e) {
      print("Wrong input type!");
      isEligibleForCastingVote();
    }
  }
}

// Write a program to check whether an alphabet is a vowel or consonant.
// Vowel alphabet is ( المتحركه الحروف( :)a,i,o,u,e)
// Consonant : rest of alphabets
void isVowel() {
  List vowels = ["a", "i", "o", "u", "e"];
  print("Please enter a letter");
  String read = stdin.readLineSync();
  if (read != null && read.isNotEmpty && read.length == 1) {
    String y = vowels.contains(read)
        ? "The alphabet is a vowel"
        : "The alphabet is a consonant";
    print(y);
  } else {
    print("Wrong input type!");
    isVowel();
  }
}

// How can you find the minimum/maximum of three numbers using the ternary operator (?: ),
// please search and use it, don’t use if.
void getMinAndMax() {
  print("enter three floating-point numbers to sorted number...");
  List list = [];
  int min = 0;
  int max = 0;
  while (list.length < 3) {
    String read = stdin.readLineSync();
    if (read != null && read.isNotEmpty) {
      try {
        int x = int.parse(read);
        list.add(x);
        if (list.length == 1) {
          min = max = x;
        } else {
          if (x < min) {
            min = x;
          }
          if (x > max) {
            max = x;
          }
        }
      } catch (e) {
        print(
            "Wrong input type, Please enter the floating-point numbers only.");
      }
    }
  }
  print("Max =$max \nMin = $min");
}
