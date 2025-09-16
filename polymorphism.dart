// Malika Khasanboeva
// 220106

import 'dart:convert';

// Task 2 (Easy): Weapon Actions
class Weapon {
  void action() {
    print("Generic weapon action");
  }
}

class Sword extends Weapon {
  @override
  void action() {
    print("Swinging!");
  }
}

class Bow extends Weapon {
  @override
  void action() {
    print("Firing!");
  }
}

// Task 3 (Easy): Animal Feeder
class Animal {
  void eat() {
    print("Animal is eating.");
  }
}

class Lion extends Animal {
  @override
  void eat() {
    print("Eating meat.");
  }
}

class Goat extends Animal {
  @override
  void eat() {
    print("Eating grass.");
  }
}

void feed(Animal animal) {
  animal.eat();
}

// Task 4 (Medium): Payment Processing
abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} using Credit Card.");
  }
}

class PayPal implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid \$${amount.toStringAsFixed(2)} using PayPal.");
  }
}

void processPayment(PaymentMethod method, double amount) {
  method.pay(amount);
}

// Task 5 (Medium): Data Formatting System
abstract class DataFormatter {
  String format(Map<String, dynamic> data);
}

class JSONFormatter implements DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return jsonEncode(data);
  }
}

class KeyValueFormatter implements DataFormatter {
  @override
  String format(Map<String, dynamic> data) {
    return data.entries.map((e) => "${e.key}: ${e.value}").join('\n');
  }
}

void main() {
  // Task 2: Weapon Actions
  List<Weapon> weapons = [Sword(), Bow()];
  for (var weapon in weapons) {
    weapon.action();
  }

  print('---');

  // Task 3: Animal Feeder
  feed(Lion());  // Eating meat.
  feed(Goat());  // Eating grass.

  print('---');

  // Task 4: Payment Processing
  processPayment(CreditCard(), 100.0);
  processPayment(PayPal(), 59.99);

  print('---');

  // Task 5: Data Formatting System
  Map<String, dynamic> sampleData = {
    "name": "Alice",
    "age": 30,
    "email": "alice@example.com"
  };

  List<DataFormatter> formatters = [JSONFormatter(), KeyValueFormatter()];
  for (var formatter in formatters) {
    print("Formatted output:\n${formatter.format(sampleData)}\n");
  }
}
