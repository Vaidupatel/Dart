//  In Dart programing, maps are dictionary like data types that exits in key value format(known as lock-key).
//  There is no restriction on data types that goes in map data type.
//  Map are very flexible and can mutate their size based on the requirements.
//  It is important to noted that all lock(keys) are needed to be unique inside the map data type.
//  Syntax:- var var_name = { key1: value1, key2: value2,key3: value3, ... };
//  We can also create the constructor for the map and inset value by using the constructor.
void main(){
  var map_name = {'key1':"vaidik", 'key2':"nirjal", 'key3':"prince", "key4":"darshan"};
  print(map_name);

  print(map_name['key2']);  //  To fetch the specific value according to key
  print(map_name['key5']);  // If there is no value according to key than it will print NULL

  map_name['key1'] = "rama";  //To over ride the value according to the key
  print(map_name);

  var map_num = Map();  // To create the map using the the object of the Map class
  map_num['num1'] = 1;
  map_num['num2'] = 2;
  map_num['num3'] = 3;
  map_num['num4'] = 4;
  print(map_num);

  print(map_num.isEmpty);
  print(map_num.isEmpty);
  print(map_num.length);
  print(map_num.keys);
  print(map_num.values);
  print(map_num.containsKey('num2'));
  print(map_num.containsValue(4));
  print(map_num.remove('num2'));
  print(map_num);


}
