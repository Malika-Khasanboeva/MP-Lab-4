// Malika Khasanboeva
// 220106

// Task 2 (Easy): Handling Index Out of Bounds
void printElementAtIndex(List list, int index) {
  try {
    print("Element at index $index: ${list[index]}");
  } catch (e) {
    if (e is RangeError) {
      print("Error: Invalid index.");
    } else {
      print("Unexpected error: $e");
    }
  }
}

// Task 3 (Easy/Medium): Catching FormatException
void parseAge(String input) {
  try {
    int age = int.parse(input);
    print("Parsed age: $age");
  } on FormatException {
    print("Error: Invalid number format.");
  }
}

// Task 4 (Medium): Custom Exceptions
class InvalidInputException implements Exception {
  final String message;
  InvalidInputException(this.message);

  @override
  String toString() => "InvalidInputException: $message";
}

void processText(String input) {
  if (input.isEmpty) {
    throw InvalidInputException("Input cannot be empty.");
  }
  print("Processing: $input");
}

// Task 5 (Medium): Using the ‘finally‘ Block
void readDatabase() {
  try {
    print("Reading data from database...");
    // Simulate an error or comment this line to simulate success
    // throw Exception("Failed to read data.");
    print("Data read successfully.");
  } catch (e) {
    print("Error: ${e.toString()}");
  } finally {
    print("Database connection closed.");
  }
}

// Main Function
void main() {
  print("Task 2: Index Handling");
  printElementAtIndex([10, 20, 30], 1); // Valid
  printElementAtIndex([10, 20, 30], 5); // Invalid

  print("\nTask 3: Format Exception");
  parseAge("25");   // Valid input
  parseAge("abc");  // Invalid input

  print("\nTask 4: Custom Exception");
  try {
    processText(""); // Will throw
  } catch (e) {
    print(e);
  }

  try {
    processText("Hello, Dart!");
  } catch (e) {
    print(e);
  }

  print("\nTask 5: Finally Block");
  readDatabase();
}
