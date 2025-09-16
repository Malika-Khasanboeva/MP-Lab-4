// Malika Khasanboeva
// 220106

// Task 2 (Easy): Animal Sounds
class Animal {
  void makeSound() {
    print("Some generic animal sound");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print("Meow!");
  }
}

// Task 3 (Easy): Shape Hierarchy
class Shape {
  final String color;

  Shape(this.color);
}

class Circle extends Shape {
  final double radius;

  Circle(String color, this.radius) : super(color);
}

class Square extends Shape {
  final double sideLength;

  Square(String color, this.sideLength) : super(color);
}

// Task 4 (Medium): Employee and Manager
class Employee {
  final String name;
  final double baseSalary;

  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    return baseSalary;
  }
}

class Manager extends Employee {
  final double bonus;

  Manager(String name, double baseSalary, this.bonus) : super(name, baseSalary);

  @override
  double calculateSalary() {
    return baseSalary + bonus;
  }
}

// Task 5 (Medium): Library Items
class LibraryItem {
  final String title;
  final String id;

  LibraryItem(this.title, this.id);

  String getDetails() {
    return "Title: $title, ID: $id";
  }
}

class Book extends LibraryItem {
  final String author;

  Book(String title, String id, this.author) : super(title, id);

  @override
  String getDetails() {
    return "Book - Title: $title, ID: $id, Author: $author";
  }
}

class DVD extends LibraryItem {
  final String director;

  DVD(String title, String id, this.director) : super(title, id);

  @override
  String getDetails() {
    return "DVD - Title: $title, ID: $id, Director: $director";
  }
}

// Main function to test all tasks
void main() {
  // Task 2: Animal Sounds
  Dog dog = Dog();
  Cat cat = Cat();
  dog.makeSound(); // Woof!
  cat.makeSound(); // Meow!

  print('---');

  // Task 3: Shape Hierarchy
  Circle circle = Circle("Red", 5.0);
  Square square = Square("Blue", 4.0);
  print("Circle - Color: ${circle.color}, Radius: ${circle.radius}");
  print("Square - Color: ${square.color}, Side Length: ${square.sideLength}");

  print('---');

  // Task 4: Employee and Manager
  Employee emp = Employee("John", 50000);
  Manager mgr = Manager("Alice", 60000, 15000);
  print("${emp.name}'s Salary: \$${emp.calculateSalary()}");
  print("${mgr.name}'s Salary: \$${mgr.calculateSalary()}");

  print('---');

  // Task 5: Library Items
  Book book = Book("1984", "B001", "George Orwell");
  DVD dvd = DVD("Inception", "D001", "Christopher Nolan");
  print(book.getDetails());
  print(dvd.getDetails());
}
