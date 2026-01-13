import 'dart:io';

void main(List<String> arguments) {

  countGeneral([ 1, 2, 3, 1, 3, 6 ]);
  bubbleSort([ 1, 0, 3, 6, 2, 5 ]);
  optimizedBubbleSort([ 1, 0, 3, 6, 2, 5 ]);
  selectionSort([1, 0, 3, 6, 2, 5]);
}

//1- Write a function getMin that takes an array as a parameter for the function and returns the
// minimum value of the array
int getMin(List list){
  int min = list[0];
  for(int i=1; i<list.length;i++){
    min = min > list[i] ? list[i] : min;
  }
  return min;
}

//2- Write a function CalculateEven that takes an array as a parameter for the function and calculate
// the sum of even numbers in the array
int calculateEven(List list){
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    int num = list[i];
    if (num % 2 == 0) {
      sum += num;
    }
  }
  return sum;
}

//3- Write a function count2 that takes an array as a parameter and counts occurrences of the number 2
int count2(List list){
  int count2 = 0;
  for (int i = 0; i < list.length; i++) {
    int num = list[i];
    if (num == 2) {
      ++count2;
    }
  }
  return count2;
}

//4- Modify the above function in the previous problem to be CountGeneral which takes the array as
// a parameter and counts occurrences of every number in the array and prints it
// Hint: as in the previous example but the input will be every number in the input array

void countGeneral(List<int> arr) {
  Map<int, int> counts = {};

  for (int i = 0; i < arr.length; i++) {
    int num = arr[i];

    if (counts.containsKey(num)) {
      counts[num] = counts[num] + 1;
    } else {
      counts[num] = 1;
    }
  }

  counts.forEach((key, value) {
    print('$key -> $value');
  });
}

// Write function bubbleSort that takes an array as a parameter and sorts it Hint: search about bubble sorting and implement it
// for example input [ 1, 0, 3, 6, 2, 5 ] output (using bubble sorting) [ 0, 1, 2, 3, 5, 6 ]
void bubbleSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // swap
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  print(arr);
}

// Modify the above function in the previous problem to be OptimizedBubbleSort Hint: search about how Optimized bubble sort works and implement
// it for example input [ 1, 0, 3, 6, 2, 5 ] output (using optimized bubble sorting) [ 0, 1, 2, 3, 5, 6 ]
void optimizedBubbleSort(List<int> arr) {
  int n = arr.length;
  bool swapped;

  for (int i = 0; i < n - 1; i++) {
    swapped = false;

    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        // swap
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapped = true;
      }
    }

    if (!swapped) {
      break;
    }
  }
  print(arr);
}


// Write the function SelectionSort that takes an array as a parameter and sorts it
// Hint: search about selection sort and implement it for example input [ 1, 0, 3, 6, 2, 5] output (using selection sort) [ 0, 1, 2, 3, 5, 6 ]
void selectionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;

    // Find the index of the smallest element
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }

    // Swap if a smaller element was found
    if (minIndex != i) {
      int temp = arr[i];
      arr[i] = arr[minIndex];
      arr[minIndex] = temp;
    }
  }
  print(arr);
}
