// Malika Khasanboeva
// 220106

// Task 2 (Easy): Flyer Mixin
mixin Flyer {
  void fly() {
    print("Taking off!");
  }
}

class Bird with Flyer {}

class Plane with Flyer {}

// Task 3 (Easy): Logger Mixin
mixin Logger {
  void log(String message) {
    print("[LOG] $message");
  }
}

class DataService with Logger {
  void fetchData() {
    log("Fetching data");
  }
}

// Task 4 (Medium): Validator Mixin
mixin Validator {
  bool isEmailValid(String email) {
    return email.contains('@') && email.contains('.');
  }

  bool isPasswordStrong(String password) {
    return password.length > 8;
  }
}

class UserSignup with Validator {
  void validate(String email, String password) {
    print("Email valid: ${isEmailValid(email)}");
    print("Password strong: ${isPasswordStrong(password)}");
  }
}

// Task 5 (Medium): Combining Mixins
mixin Performer {
  void perform() {
    print("Performing on stage!");
  }
}

mixin Musician {
  void playInstrument() {
    print("Playing the guitar!");
  }
}

class Artist {
  final String name;
  Artist(this.name);
}

class Dancer extends Artist with Performer {
  Dancer(String name) : super(name);
}

class Guitarist extends Artist with Performer, Musician {
  Guitarist(String name) : super(name);
}

// Main function to test everything
void main() {
  // Task 2: Flyer Mixin
  Bird bird = Bird();
  Plane plane = Plane();
  bird.fly();   // Taking off!
  plane.fly();  // Taking off!

  print('---');

  // Task 3: Logger Mixin
  DataService service = DataService();
  service.fetchData();  // [LOG] Fetching data

  print('---');

  // Task 4: Validator Mixin
  UserSignup signup = UserSignup();
  signup.validate("test@example.com", "securePass123");  // Valid inputs
  signup.validate("invalidemail", "123");               // Invalid inputs

  print('---');

  // Task 5: Combining Mixins
  Dancer dancer = Dancer("Sophia");
  Guitarist guitarist = Guitarist("Liam");

  print("${dancer.name}:");
  dancer.perform();

  print("${guitarist.name}:");
  guitarist.perform();
  guitarist.playInstrument();
}
