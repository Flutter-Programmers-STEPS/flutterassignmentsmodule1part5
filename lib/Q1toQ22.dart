void main() {
  // Create a new list and add some colors
  List<String> colors = [];
  colors.add('Red');
  colors.add('Blue');
  colors.add('Green');
  colors.add('Yellow');

  // Print the collection
  print('Colors: $colors');

  // Iterate through all elements in the list
  print('Iterating through the list:');
  for (String color in colors) {
    print(color);
  }

  // Insert an element at the first position
  String newColor = 'Orange';
  colors.insert(0, newColor);
  print('List after inserting "$newColor" at the first position: $colors');

  // Retrieve an element at a specified index
  int index = 2;
  if (index < colors.length) {
    String element = colors[index];
    print('Element at index $index: $element');
  } else {
    print('Invalid index!');
  }

  // Update a specific list element with a given element
  String updatedColor = 'Purple';
  int updateIndex = 1;
  if (updateIndex < colors.length) {
    colors[updateIndex] = updatedColor;
    print('List after updating element at index $updateIndex with "$updatedColor": $colors');
  } else {
    print('Invalid index!');
  }

  // Remove the third element from the list
  if (colors.length >= 3) {
    colors.removeAt(2);
    print('List after removing the third element: $colors');
  } else {
    print('Not enough elements in the list!');
  }

  // Search for an element in the list
  String searchColor = 'Green';
  bool found = colors.contains(searchColor);
  print('Searching for "$searchColor": $found');

  // Sort the list
  colors.sort();
  print('Sorted list: $colors');

  // Copy one list into another
  List<String> copiedList = List.from(colors);
  print('Copied list: $copiedList');

  // Shuffle elements in the list
  colors.shuffle();
  print('Shuffled list: $colors');

  // Reverse elements in the list
  colors = colors.reversed.toList();
  print('Reversed list: $colors');

  // Extract a portion of the list
  if (colors.length >= 3) {
    List<String> portion = colors.sublist(1, 3);
    print('Extracted portion: $portion');
  } else {
    print('Not enough elements in the list to extract a portion!');
  }

  // Compare two lists
  List<String> otherList = ['Red', 'Blue', 'Green', 'Yellow'];
  bool equal = _areListsEqual(colors, otherList);
  print('Comparing lists: $equal');

  // Swap two elements in the list
  int swapIndex1 = 0;
  int swapIndex2 = 1;
  if (swapIndex1 < colors.length && swapIndex2 < colors.length) {
    String temp = colors[swapIndex1];
    colors[swapIndex1] = colors[swapIndex2];
    colors[swapIndex2] = temp;
    print('List after swapping elements at indices $swapIndex1 and $swapIndex2: $colors');
  } else {
    print('Invalid indices for swapping!');
  }

  // Join two lists
  List<String> moreColors = ['Purple', 'Orange'];
  List<String> joinedList = [...colors, ...moreColors];
  print('Joined list: $joinedList');

  // Clone a list to another list
  List<String> clonedList = List.from(colors);
  print('Cloned list: $clonedList');

  // Empty the list
  colors.clear();
  print('List after clearing: $colors');

  // Test if the list is empty or not
  bool isEmpty = colors.isEmpty;
  print('Is the list empty? $isEmpty');

  // Trim the capacity of the list to the current list size
  colors = List.from(colors);
  print('List after trimming capacity: $colors');

  // Increase the size of the list
  int increasedSize = 10;
  for (int i = colors.length; i < increasedSize; i++) {
    colors.add('');
  }
  print('List after increasing size to $increasedSize: $colors');

  // Replace the second element of the list with a specified element
  String replaceElement = 'Pink';
  if (colors.length >= 2) {
    colors[1] = replaceElement;
    print('List after replacing the second element with "$replaceElement": $colors');
  } else {
    print('Not enough elements in the list!');
  }

  // Print all elements of the list using the position of the elements
  print('Printing elements using positions:');
  for (int i = 0; i < colors.length; i++) {
    print('Element at position $i: ${colors[i]}');
  }
}

bool _areListsEqual(List<dynamic> list1, List<dynamic> list2) {
  if (list1.length != list2.length) {
    return false;
  }

  for (int i = 0; i < list1.length; i++) {
    if (list1[i] != list2[i]) {
      return false;
    }
  }

  return true;
}
