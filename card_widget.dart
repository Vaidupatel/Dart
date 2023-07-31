import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Card Widget",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card Widget"),
        ),
        body: Center(
          child: Card(
              elevation: 6,
              shadowColor: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Hello world", style: TextStyle(fontSize: 30)),
              )),
        ));
  }
}
