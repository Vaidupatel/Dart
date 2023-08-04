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
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(
              color: Colors.grey,
              height: 200,
              width: 200,
            ),
            Positioned(
                left: 60,
                bottom: 60,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 10,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(15, 15),
                          blurStyle: BlurStyle.normal)
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey,
                  ),
                  height: 160,
                  width: 160,
                )),
          ],
        ),
      ),
    );
  }
}
