// 1. Function that takes two numbers as input and returns the sum.
int sum(num1, num2) {
  return num1 + num2;
}

//3. program that uses a switch statement to check for different string
//values and output a response based on the value.
void switchStatement(String value) {
  switch (value) {
    case 'red':
      {
        print("Roses are red");
      }
      break;
    case 'blue':
      {
        print("The sky is blue");
      }
      break;
    case 'honey':
      {
        print('Sweeter than honey');
      }
      break;
    default:
      print('default case');
  }
}

//4. program that uses a while loop to print out the numbers from 20 to 10.
void print_number() {
  int x = 20;
  while (x >= 10) {
    print(x);
    x--;
  }
}

//5. program that uses an if-else statement to check
// if a number is even or odd and output the result.
void Even_or_Odd(int number) {
  if (number % 2 == 0) {
    print("$number: ia an Even number");
  } else {
    print("$number: is an Odd number");
  }
}

//6. program that takes a list of numbers as input and outputs the largest number in the list.
int LargestNumber(List numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

//7. program that uses a try-catch block to catch an exception and output an error message
void Division(a, b) {
  try {
    print(a ~/ b);
  } catch (e) {
    print('Error: $e');
  }
}

//main function
void main() {
  int result =
      sum(9, 45); //calling the function that return sum of two numbers.
  print('The sum of the numbers is: $result');

//program that uses a for loop to print the numbers 1 to 10
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

//Calling the switchStatement function
  switchStatement('red');
  switchStatement('blue');
  switchStatement('honey');

//calling the print_number function
  print_number();

//Calling the function that checks even or odd number
  Even_or_Odd(8);
  Even_or_Odd(3);

//calling the largestNumber function
  List numbers = [4, 6, 8, 10, 50];
  int Value = LargestNumber(numbers);
  print(' Largest number in the list is: $Value');

  // the division function to catch IntergerDivisionByZeroException.
  Division(10, 0);
}
