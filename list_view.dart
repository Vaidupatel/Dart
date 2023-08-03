import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: ListView(
        reverse: true,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("One",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Two",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Three",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Four",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.black),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Five",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w100,color: Colors.black),),
          ),
        ],
      )
    );
  }
}
