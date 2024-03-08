void main() {
  List<String> favoriteHobbies = [];

  print("Is the list empty? ${favoriteHobbies.isEmpty}");

  // Add
  favoriteHobbies.add("Reading");
  favoriteHobbies.add("Coding");
  favoriteHobbies.add("Eating");

  print("List of Favorite Hobbies: $favoriteHobbies");

  // Remove
  String hobbyToRemove = "Coding";
  if (favoriteHobbies.contains(hobbyToRemove)) {
    favoriteHobbies.remove(hobbyToRemove);
    print("$hobbyToRemove removed from the list");
  } else {
    print("$hobbyToRemove is not in the list");
  }

  // Sort
  favoriteHobbies.sort();
  print("Sorted : $favoriteHobbies");
}
