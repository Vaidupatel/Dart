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
  var name = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey,
          child: Center(
            child: Container(
              width: 100,
              height: 100,
              // color: Colors.blue,
              decoration: BoxDecoration(
                color: Colors.black,
                // borderRadius: BorderRadius.circular(20)
                // borderRadius: BorderRadius.only(topLeft:Radius.elliptical(20, 10) ),
                // borderRadius: BorderRadius.only(topLeft:Radius.circular(50) ),
                // borderRadius: BorderRadius.all(Radius.circular(10)),

                border: Border.all(width: 2,color: Colors.white),
                boxShadow: [BoxShadow(
                  color: Colors.pink,
                  blurRadius: 100,
                  spreadRadius: 100
                )],
                shape: BoxShape.circle
              ),
            ),
          ),
        ));
  }
}
