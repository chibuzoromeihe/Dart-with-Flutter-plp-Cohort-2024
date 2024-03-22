//Class student
class Student {
  String name;
  int age;
  String grade_level;

  Student(this.name, this.age, this.grade_level); //student constructor

  //Method in student class that prints out student's information
  void print_student_information() {
    print("Student: name: $name, Age: $age, Grade level: $grade_level");
  }
}

//class teacher
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject); //Constructor of the teacher class

  //This method prints the teachers information
  void print_teacher_information() {
    print("Teacher: name: $name, Age: $age, Subject: $subject");
  }
}

// Defining the third class
class School {
  void creat_object() {
    Student student =
        Student("Paul", 40, "Grade A"); // instance of student class
    Teacher teacher =
        Teacher("Prof. James", 55, "History"); //instance of teacher class
// calling both methods to displace the information
    student.print_student_information();
    teacher.print_teacher_information();
  }
}

void main() {
  School school = School(); // instance of the class school

  school.creat_object(); // calling method to  print information.
}
