import 'dart:io';

void main() {
  containsValue([8, 0, 1, 5], 0);
  calculateAverage([1, 9, 0, 5, 4, 2]);
  secondSmallest([1, 9, 0, 5, 4, 2]);
  studentGrades();
  reverseTenNumbers();
  countOccurrences();
  aboveBelowAverage();
  distinctNumbers();
}

//1 - Write a program to test if an array contains a specific value if it is in the array print Yes if it’s not
// print no
// for example
// input [ 8, 0, 1, 5 ] 0 output "Yes"
// input [ 8, 0, 1, 5 ] 2 output "No"
void containsValue(List<int> arr, int value) {
  bool found = false;

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == value) {
      found = true;
      break;
    }
  }

  print(found ? "Yes" : "No");
}

// 2 - Write a program to calculate the average value of array elements
// for example input [ 1, 9, 0, 5, 4, 2 ] output
void calculateAverage(List<int> arr) {
  int sum = 0;

  for (int i = 0; i < arr.length; i++) {
    sum += arr[i];
  }

  double average = sum / arr.length;
  print(average);
}

// 3) Write a program to find the second smallest element in an array
// for example input [ 1, 9, 0, 5, 4, 2 ] output 1
void secondSmallest(List<int> arr) {
  int smallest = arr[0];
  int secondSmallest = arr[0];

  for (int i = 0; i < arr.length; i++) {
    if (arr[i] < smallest) {
      secondSmallest = smallest;
      smallest = arr[i];
    } else if (arr[i] != smallest &&
        (secondSmallest == smallest || arr[i] < secondSmallest)) {
      secondSmallest = arr[i];
    }
  }

  print(secondSmallest);
}

// 4) Student grades program
void studentGrades() {
  print("Enter the number of students:");
  int n = int.parse(stdin.readLineSync());

  List<int> scores = [];
  print("Enter $n scores:");

  for (int i = 0; i < n; i++) {
    scores.add(int.parse(stdin.readLineSync()));
  }

  int best = scores[0];
  for (int score in scores) {
    if (score > best) best = score;
  }

  for (int i = 0; i < scores.length; i++) {
    String grade;

    if (scores[i] >= best - 10) {
      grade = 'A';
    } else if (scores[i] >= best - 20) {
      grade = 'B';
    } else if (scores[i] >= best - 30) {
      grade = 'C';
    } else if (scores[i] >= best - 40) {
      grade = 'D';
    } else {
      grade = 'F';
    }

    print("Student ${i + 1} score is ${scores[i]} and grade is $grade");
  }
}

// 5) Read ten numbers and display them reversed
void reverseTenNumbers() {
  List<int> numbers = [];
  print("Enter 10 numbers:");

  for (int i = 0; i < 10; i++) {
    numbers.add(int.parse(stdin.readLineSync()));
  }

  for (int i = numbers.length - 1; i >= 0; i--) {
    stdout.write("${numbers[i]} ");
  }
  print("");
}

// 6) Count occurrences of numbers between 1 and 100
void countOccurrences() {
  List<int> count = List.filled(101, 0);

  print("Enter numbers between 1 and 100 (end with 0):");

  while (true) {
    int num = int.parse(stdin.readLineSync());
    if (num == 0) break;
    if (num >= 1 && num <= 100) {
      count[num]++;
    }
  }

  for (int i = 1; i <= 100; i++) {
    if (count[i] > 0) {
      print("$i occurs ${count[i]} times");
    }
  }
}

// 7) Above / Below / Equal average
void aboveBelowAverage() {
  List<int> scores = [];
  print("Enter scores (negative number to stop):");

  while (true) {
    int num = int.parse(stdin.readLineSync());
    if (num < 0) break;
    scores.add(num);
  }

  int sum = 0;
  for (int s in scores) {
    sum += s;
  }

  double avg = sum / scores.length;

  int above = 0, below = 0, equal = 0;

  for (int s in scores) {
    if (s > avg) {
      above++;
    } else if (s < avg) {
      below++;
    } else {
      equal++;
    }
  }

  print("Above average:$above");
  print("Below average:$below");
  print("Equal average:$equal");
}

// 8) Distinct numbers
void distinctNumbers() {
  List<int> distinct = [];
  print("Enter ten numbers:");

  for (int i = 0; i < 10; i++) {
    int num = int.parse(stdin.readLineSync());

    bool exists = false;
    for (int d in distinct) {
      if (d == num) {
        exists = true;
        break;
      }
    }

    if (!exists) {
      distinct.add(num);
    }
  }

  print("The number of distinct number is ${distinct.length}");
  print("The distinct numbers are: ${distinct.join(' ')}");
}