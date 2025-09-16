// Malika Xasanboyeva
// 220106
// Tuesday 14.00

// Task 2: Book Class
class Book {
  String title;
  String author;
  int numberOfPages;

  Book(this.title, this.author, this.numberOfPages);
}

// Task 3: Student Class
class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double calculateAverageGrade() {
    if (grades.isEmpty) return 0;
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

// Task 4: BankAccount Class
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print(
          'Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Invalid deposit amount.');
    }
  }

  void withdraw(double amount) {
    if (amount <= balance && amount > 0) {
      balance -= amount;
      print(
          'Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${balance.toStringAsFixed(2)}');
    } else {
      print('Insufficient funds or invalid withdrawal amount.');
    }
  }
}

// Task 5: Rectangle Class with Getters
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double get area => width * height;

  double get perimeter => 2 * (width + height);
}

void main() {
  // Task 2 Test
  print('--- Task 2: Book ---');
  Book myBook = Book('1984', 'George Orwell', 328);
  print(
      'Title: ${myBook.title}, Author: ${myBook.author}, Pages: ${myBook.numberOfPages}\n');

  // Task 3 Test
  print('--- Task 3: Student ---');
  Student student = Student('Alice', 20, [85.5, 90.0, 78.0]);
  print(
      'Student: ${student.name}, Average Grade: ${student.calculateAverageGrade().toStringAsFixed(2)}\n');

  // Task 4 Test
  print('--- Task 4: BankAccount ---');
  BankAccount account = BankAccount('123456', 'Bob Smith', 500.0);
  account.deposit(150.0);
  account.withdraw(100.0);
  account.withdraw(600.0); // Should show error
  print('');

  // Task 5 Test
  print('--- Task 5: Rectangle ---');
  Rectangle rect = Rectangle(10.0, 5.0);
  print('Area: ${rect.area}');
  print('Perimeter: ${rect.perimeter}');
}
