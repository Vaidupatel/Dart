import 'package:flutter/material.dart';

main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title : "MyApp",
    theme: ThemeData(
      primarySwatch: Colors.cyan

    ),
    home: intro(),
  );
  }

}

class intro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title :Text("App Bar"),

),
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}
