import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Parent class implementing the interface
class Mammal implements Animal {
  @override
  void makeSound() {
    print('Mammal sound');
  }
}

// Subclass inheriting from Mammal
class Dog extends Mammal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Class initialized with data from a file
class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  // Method to initialize data from a file
  void initializeFromFile(String fileName) {
    File file = File(fileName);
    List<String> lines = file.readAsLinesSync();
    name = lines[0];
    age = int.parse(lines[1]);
  }
}

void main() {
  // Demonstrate inheritance
  var dog = Dog();
  dog.makeSound(); // Output: Woof!

  // Demonstrate initializing instance from a file
  var person = Person('', 0);
  person.initializeFromFile('person_data.txt');
  print('Name: ${person.name}, Age: ${person.age}');

  // Demonstrate loop
  for (int i = 0; i < 5; i++) {
    print('Loop iteration: $i');
  }
}
