void main(){

  // 1st is fixed size & 2nd is Growable size
  // There is two types of lists in dart
  // In list there is no restriction of datatype, we can add any type of data in this
  var list1 = [1,2,3,4,5,6,7,8];
  print(list1);
  list1.add(45);
  print(list1);

  var names = []; // This is empty list
  names.add(450);  // to add the element one by one in list
  names.add("vaidik");  // to add the element one by one in list
  names.add("nirjal");  // to add the element one by one in list
  names.add("prince");  // to add the element one by one in list
  names.add(450);  // to add the element one by one in list
  names.add(450);  // to add the element one by one in list
  print(names);
  // names.addAll(list1);  // to add the all element at a one in list
  print(names);

  names.insert(4,"test"); // To add element at specific index
  print(names);
  names.insertAll(5,list1); // To add whole list form specific index
  // names.insert(5,list1); // There is difference between insert and insertAall function
  print(names);
  names[4] = "Sahil"; // To update the item at specific index
  print(names);

  names.replaceRange(0, 3, [1, 2, 3]);  // to replace the specific range of index with given values
  print(names);

  names.removeLast(); // Remove the last element of the list
  print(names);

  names.remove(450);  //Remove the s[specific element
  print(names);

  names.removeAt(4); // Remove the element at given index
  print(names);

  names.removeRange(0, 4); // Remove the element of specific range
  print(names);

  print("Length = ${names.length}");    // Print the length
  print("Reversed = ${names.reversed }");   // Print the reversed list
  print("First element = ${names.first}");    // Print the first element
  print("Last element = ${names.last}");  // Print the last element
  print("Is Empty? = ${names.isEmpty}");   //print if list  is empty
  print("Is not empty? = ${names.isNotEmpty}");   //print if list is not empty
  print("Element at index 5 = ${names.elementAt(5)}"); // Print the element at given index



}
