import 'package:flutter/material.dart';

main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: intro(),
    );
  }
}

class intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),                                                         
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue.shade100,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(11)
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(10),)
                borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(100, 50),
                    bottomRight: Radius.elliptical(100, 50)),
                    // border: Border.all(width: 2, color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade500,
                offset: Offset(0, 0),
                blurRadius: 100,
                spreadRadius: 10      ,
              ),
            ],
              // shape: BoxShape.circle,
              shape: BoxShape.rectangle,
            )
          ),
        ),
        ),
      );
  }
}
