main(){
  print("Well-come to Flutter!");
  String name = "Ram";

  // Var and Dynamic

  var subject = "Maths"; // var will automatically identifies type of data
  // subject = 7;        // But we can't change the var rather than its data type
  subject = "English";   //Var and dynamic will act as same if var will not initialize at declaration

  var section;                // if we cant initialize variable at time of declaration,
  // dynamic section = 10.20; // if we cant initialize variable at time of declaration,
                              // than it will be considered as the dynamic data type

  section = "D";   // String
  section = 10;    // int  // And dynamic data type can be over ride with other data types
  section =false;  // Boolean


}
