class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void personInfo() {
    print('Name: $name\nAge: $age\nAddress: $address');
  }
}
class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int TotalMarks() {
    return marks.reduce((value, element) => value + element);
  }

  double AverageMark() {
    if (marks.isEmpty) {
      return 0;
    }
    return TotalMarks() / marks.length;
  }

 @override
  void personInfo() {
    super.personInfo();
    print('Roll Number: $rollNumber\nMarks: $marks');
  }
}

void main() {
  Student student1 = Student('Eyoab Amare', 21, 'Saris, Abo', 24, [83, 87, 91, 58, 80]);

  print('Student Information:');
  student1.personInfo();

  print('\nTotal Marks: ${student1.TotalMarks()}');
  print('Average: ${student1.AverageMark().toStringAsFixed(2)}');
}