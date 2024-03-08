// Exercise 1

void main() {
  // Create a list of favorite hobbies
  List<String> favoriteHobbies = ['Reading', 'Gardening', 'Playing Guitar'];

  // Display the initial list
  print("My favorite hobbies:");
  printList(favoriteHobbies);

  // Add a new hobby
  favoriteHobbies.add('Traveling');
  print("\nAfter adding a new hobby:");
  printList(favoriteHobbies);

  // Remove a hobby
  favoriteHobbies.remove('Gardening');
  print("\nAfter removing a hobby:");
  printList(favoriteHobbies);

  // Sort the list
  favoriteHobbies.sort();
  print("\nAfter sorting the list:");
  printList(favoriteHobbies);

  // Check if the list is empty
  print("\nIs the list empty? ${favoriteHobbies.isEmpty ? 'Yes' : 'No'}");
}

void printList(List<String> list) {
  for (String hobby in list) {
    print(hobby);
  }
}
