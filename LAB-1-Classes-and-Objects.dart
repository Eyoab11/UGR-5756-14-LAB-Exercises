class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void personInfo() {
    print('Name: $name\nAge: $age\nAddress: $address');
  }
}

void main() {
  
  Person person1 = Person('Eyoab Amare', 20, 'Saris, Abo');
  Person person2 = Person('Abebe Kebede', 39, 'Bethel, 92');

  print('Person1\'s Information :');
  person1.personInfo();

  print('\nPerson2\'s Information ::');
  person2.personInfo();

  person1.name = 'Eyoab Amare Bantider';
  person2.age = 40;

  print('\nUpdated Information of Person1:');
  person1.personInfo();

  print('\nUpdated Information of Person2:');
  person2.personInfo();
}
