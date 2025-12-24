import 'dart:io';

void main(List<String> arguments) {
  isEvenNumber();
  sortNumber();
  isEligibleForCastingVote();
  isVowel();
  getMinAndMax();
  printQ6Answer();
  get100Message();
  getGrade();
  getAreaAndVolume();
  getNumType();
}

//1- Write a Program that takes a number from user then prints “yes” if number is even and “no” if number is odd
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

//2- Sorting Three Floating Numbers
// Write a program that reads from user three floating-point numbers and sorts them. Your code
// should handle all cases.
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
  list.sort();

  print("Sorted numbers:");
  for (double num in list) {
    print(num);
  }
}

//3- Write a program to read the age of a candidate from user and determine whether it is eligible for
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

//4- Write a program to check whether an alphabet is a vowel or consonant.
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

//5- How can you find the minimum/maximum of three numbers using the ternary operator (?: ),
// please search and use it, don’t use if.
void getMinAndMax() {
  print("enter three floating-point numbers to get min and max number...");
  List list = [];
  double min = 0;
  double max = 0;
  while (list.length < 3) {
    String read = stdin.readLineSync();
    if (read != null && read.isNotEmpty) {
      try {
        double x = double.parse(read);
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

//6- what is the value of x, y, z and w (solve it in text file or using comments in dart file)
// int x=3;
// int y=2;
// int z=x++;
// int w=++y;
void printQ6Answer() {
  print("x = 4\n"
      "y = 3\n"
      "z = 3\n"
      "w = 3");
}

//7- Create a program that asks the user to enter their name and their age. Print out a
// message that tells how many years they have to be 100 years old.
void get100Message() {
  print("Please enter your name:");
  String name = stdin.readLineSync();
  int age = 0;
  while (age == 0) {
    print("Please enter your age:");
    String read = stdin.readLineSync();
    if (read != null && read.isNotEmpty) {
      try {
        int y = int.parse(read);
        if (y > 0) {
          age = y;
        }
      } catch (e) {
        print("Wrong input type!");
      }
    }
  }
  int diff = 100 - age;
  print("Hi, $name, you have $diff years left to be 100 years old");
}

//8- Write a program that prompts the user to enter the grade for student and show up a
// message for him
void getGrade() {
  print("Enter your grade:");
  String grade = stdin.readLineSync();

  switch (grade.toUpperCase()) {
    case 'A':
      print("Excellent");
      break;
    case 'B':
      print("Outstanding");
      break;
    case 'C':
      print("Good");
      break;
    case 'D':
      print("Can Do Better");
      break;
    case 'F':
      print("Failed!");
      break;
    default:
      print("Invalid Grade");
  }
}

//9- (Compute the volume of a cylinder) Write a program that reads in the radius
// and length of a cylinder and computes the area and volume using the following
void getAreaAndVolume() {
  double radius;
  while (radius == null) {
    try {
      print("Enter the radius of the cylinder:");
      radius = double.parse(stdin.readLineSync());
    } catch (e) {
      print("Wrong input type!");
    }
  }

  double length;
  while (length == null) {
    try {
      print("Enter the length of the cylinder:");
      length = double.parse(stdin.readLineSync());
    } catch (e) {
      print("Wrong input type!");
    }
  }

  double area = radius * radius * 3.14;
  double volume = area * length;

  print("The area is ${area.toStringAsFixed(4)}");
  print("The volume is ${volume.toStringAsFixed(1)}");
}

//10- Write a program that prompts the user to enter an integer
// and check if this number is negative or zero or positive show up a massage with its
// sign
void getNumType() {
  int number;
  while (number == null) {
    try {
      print("Enter an integer:");
      number = int.parse(stdin.readLineSync());
    } catch (e) {
      print("Wrong input type!");
    }
  }

  if (number > 0) {
    print("Positive");
  } else if (number < 0) {
    print("Negative");
  } else {
    print("Zero");
  }
}
