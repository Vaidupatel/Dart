import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practice 1",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter container"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 200,
                    height: 200,
                    color: Colors.red,
                  ),Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 200,
                    height: 200,
                    color: Colors.black,
                  ),Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 200,
                    height: 200,
                    color: Colors.grey,
                  ),Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top:10,left: 10, right: 10),

              height: 200,
              color: Colors.yellow,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top:10,left: 10, right: 10),

              height: 200,
              color: Colors.green,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10, top:10,left: 10, right: 10),

              height: 200,
              color: Colors.red,
            ),Container(
              margin: EdgeInsets.only(bottom: 10, top:10,left: 10, right: 10),

              height: 200,
              color: Colors.black,
            ),Container(
              margin: EdgeInsets.only(bottom: 10, top:10,left: 10, right: 10),

              height: 200,
              color: Colors.grey,
            ),

          ],
        ),
      ),
    );
  }
}
