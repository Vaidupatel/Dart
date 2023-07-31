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
      title: 'Flutter Demo',
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Row(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 5,
            chil  d: Container(
              child: Container(
                  color: Colors.pinkAccent,
                  margin: EdgeInsets.all(50),
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Text("Hello world",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        )),
                  )),

              height: 100,
              // width: 500,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
