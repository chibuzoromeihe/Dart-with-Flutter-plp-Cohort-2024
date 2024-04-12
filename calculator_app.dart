import "dart:io";

double number_input() {
  print("Simple calculator");
  print("Enter number: ");
  double inputedNumber = double.parse(stdin.readLineSync()!);
  return inputedNumber;
}

// function that prompt the user to enter a given math operand
String operand() {
  print("Entre the operand: '+', '-', '*', '/'");
  String operandInput = stdin.readLineSync()!;
  return operandInput;
}

void main() {
  double num1 = number_input(); // Calls the number_input function
  double num2 = number_input();
  String operator =
      operand(); //calls the function operand to get the input from the user
  double result = 0.00; // initialize the result to 0.

  switch (operator) {
    case '+':
      result = num1 + num2;
      print("${num1} ${operator} ${num2} = ${result}");
      break;
    case '-':
      result = num1 - num2;
      print("${num1} ${operator} ${num2} = ${result}");
      break;

    case '*':
      result = num1 * num2;
      print("${num1} ${operator} ${num2} = ${result}");
      break;

    case '%':
      result = num1 % num2;
      print("${num1} ${operator} ${num2} = ${result}");
      break;

    case '/':
      if (num2 == 0) {
        print("ZeroDivisionError");
        return null;
      }
      result = num1 / num2;
      break;

    default:
      print("invalid input");
      break;
  }
}
