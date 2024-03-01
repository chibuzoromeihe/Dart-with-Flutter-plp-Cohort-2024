
//1. function addTwo thta takes two numbers as arguments and returns the sum of the two numbers.
int addTwo(num1, num2){
  return num1 + num2;
}
//2. function subtractTwo, takes two numbers as argument and returns the difference.
double subtractTwo(num3, num4){
  return num3 - num4;
}
  //3.function multiplyTwo that takes two numbers as argument and return the product of the two numbers
  int multiplyTwo(number1, number2){
    return number1 * number2;
  }
  //4. function divideTwo function that returns the quotient of two numbers taken as arguments.
  double divideTwo(number3, number4){
    return number3 / number4; 
  }
  //5. function stringLength that takes an argument of type string and returns the length of the string
  int stringLength(string){ 
    return string.length;
  }
  //6.funcion getFirstElement that takes a list as argument and returns the first element of the list.
  dynamic getFirstElement(list){
      return list[0];
  }

void main(){
  //calling function addTwo
print(addTwo(7, 10)); 

//calling function subtractTwo
print(subtractTwo(20.5, 10.5));

//calling multiplyTwo function
print(multiplyTwo(4, 6));

//calling function divideTwo
print(divideTwo(400, 10));

//calling function stringLength
print(stringLength("Chibuzor"));

//calling getFirstElement
print(getFirstElement(['red', 'black', 'yellow', 3, 'blue']));
}