// Malika Khasanboeva
// 220106
// Tue 14.00

// Task 2 (Easy): Order Status
enum OrderStatus {
  pending,
  processing,
  shipped,
  delivered,
  cancelled,
}

// Task 3 (Easy): Traffic Light
enum TrafficLight {
  red,
  yellow,
  green,
}

// Function to get action based on traffic light color
String getTrafficLightAction(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      return "Stop";
    case TrafficLight.yellow:
      return "Caution";
    case TrafficLight.green:
      return "Go";
  }
}

//  Task 4 (Medium): User Roles
enum UserRole {
  admin,
  editor,
  guest,
}

class User {
  final String name;
  final UserRole role;

  User(this.name, this.role);

  bool hasEditPermission() {
    return role == UserRole.admin || role == UserRole.editor;
  }
}

// Task 5 (Medium): Enums with Properties
extension TrafficLightExtension on TrafficLight {
  int get durationInSeconds {
    switch (this) {
      case TrafficLight.red:
        return 30;
      case TrafficLight.yellow:
        return 5;
      case TrafficLight.green:
        return 45;
    }
  }
}

void main() {
  // Task 2: Order Status
  OrderStatus order = OrderStatus.processing;
  print("Order status: $order");

  // Task  3: Traffic Light Actions
  for (var light in TrafficLight.values) {
    print("Traffic light: $light -> Action: ${getTrafficLightAction(light)}");
  }

  // Task 4: User Roles and Edit Permissions
  User user1 = User("Alice", UserRole.admin);
  User user2 = User("Bob", UserRole.editor);
  User user3 = User("Charlie", UserRole.guest);

  List<User> users = [user1, user2, user3];
  for (var user in users) {
    print("${user.name} has edit permission: ${user.hasEditPermission()}");
  }

  // Task 5: Traffic Light Duration
  for (var light in TrafficLight.values) {
    print("Light: $light, Duration: ${light.durationInSeconds} seconds");
  }
}
