// Exercise 2

void main() {
  // Define constant variable for the speed of light
  const double speedOfLight = 299792458; // meters per second

  // Get user input for distance
  print("Enter the distance in meters:");
  double distance = double.parse(stdin.readLineSync()!);

  // Calculate the time it takes for light to travel the distance
  double time = distance / speedOfLight;

  // Display the result
  print("It takes ${time.toStringAsFixed(9)} seconds for light to travel ${distance.toString()} meters.");
}
