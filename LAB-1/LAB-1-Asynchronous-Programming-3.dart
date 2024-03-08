// Exercise 3

import 'dart:async';

class Database {
  Future<List<String>> fetchData() async {
    // Simulate a database delay using Future.delayed
    await Future.delayed(Duration(seconds: 2));

    // Simulated data from the database
    List<String> data = [
      'Record 1',
      'Record 2',
      'Record 3',
      'Record 4',
      'Record 5',
    ];

    // Return the data
    return data;
  }
}

void main() async {
  // Create an instance of the Database class
  Database database = Database();

  // Use async and await to wait for the data to be loaded
  List<String> loadedData = await database.fetchData();

  // Display the loaded data
  print('Data loaded from the database:');
  for (String record in loadedData) {
    print(record);
  }
}
