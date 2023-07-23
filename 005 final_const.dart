void main(){

  //
  final name = "vaid";  // The final variable can assign value only once

  // name = "nirjal"; //  If we try to override the final variable than it will gibe the error.
  // Final and var/dynamic can not be use at a time because var let us to override the data,
  // But final cant be let us to override the data.
  // Final can be declare and assigned at different time.

  const pi = 3.14;  // Const variable must be initialize at the time of declaration.
  // pi = 6.28;  // Const variable cant be override, or if list taken s the const than we cant even add data to list.

  // final names = ['vaidik', 'prince', 'darshan', 'sagil', 'nirjal'];
  // names = [1,2,3,4,5,6,7,8,9,10]; // Final cant be Reassign, but we can add the value in list
  // names.add("Sahil");

  var names =[];
  names = ['vaidik', 'prince', 'darshan', 'sagil', 'nirjal'];
  names = [1,2,3,4,5,6,7,8,9,10]; // var can be Reassign,
  // And also be assign different data type if it is not declared as inline declaration, mean that dynamic data



}
