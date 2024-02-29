//number data type: it holds numeric value, it can be an int or double.
//1.int data type: used to represent whole numbers. 
//example of int data type
void main(){
int number1 = 10;
print(number1);

// 2. double data type: is used to represent floating-point numbers.
//Example
double num2 = 20.5;
print(num2);

//3.String data type: represent a sequence of characters.
//Example
String firstName =('Chibuzor ');
String surname = ('Omeihe');
print(firstName  + surname);

//4.List: list is used to represent an ordered collection of objects
// Example
List string= ['kate', 'John', 'Ben'];
print(string);
print(string[1]); // printing a given string using index.

//string can be numbers too.
List <int> numbers = [3, 5, 6];
print(numbers);
 
 //5. Map: map represent a key and value pair. the keys and values on a map may be any type.
 //Example
 Map identity = {'name': 'Tony', 'age': 70, 'completion': 'dark'};
print(identity);
}