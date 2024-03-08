class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
  }
}

void main() {
  Person person1 = Person("Hiwot", 21, "Addis Ababa");

  print("Initial Information:");
  person1.displayInfo();

  print("Modified Information:");
  person1.age = 26;
  person1.displayInfo();
}
