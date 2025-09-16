// Malika Khasanboeva
// 220106

import 'dart:async';

// Task 2 (Easy): Simple Future with .then()
Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => "Report generated!");
}

// Task 3 (Easy): Rewriting with async/await
Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Report generated!";
}

// Task 4 (Medium): Chaining Async Calls
Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return "User name for ID $userId: Alice";
}

// Task 5 (Medium): Concurrent Futures
Future<void> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  print("Configuration fetched.");
}

Future<void> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  print("Resources loaded.");
}

Future<void> main() async {
  // Task 2: .then() example
  generateReport().then((result) => print("Task 2: $result"));

  // Wait a bit before moving to next task to keep output readable
  await Future.delayed(Duration(seconds: 1));

  // Task 3: async/await version
  String report = await generateReportAsync();
  print("Task 3: $report");

  print('---');

  // Task 4: Chaining async calls
  int userId = await fetchUserId();
  String userDetails = await fetchUserDetails(userId);
  print("Task 4: $userDetails");

  print('---');

  // Task 5: Concurrent Futures
  await Future.wait([
    fetchConfiguration(),
    loadResources(),
  ]);
  print("Task 5: System Ready");
}
