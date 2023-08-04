import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Stack Widgets'),
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
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              // borderRadius: BorderRadius.circular(30),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(100, 60),
                  bottomRight: Radius.elliptical(100, 60)),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.shade300,
                    blurRadius: 5,
                    spreadRadius: 5,
                    offset: Offset(10, 10),
                    blurStyle: BlurStyle.solid)
              ],
            ),
            height: 200,
            width: 200,
          ),
        ));
  }
}
