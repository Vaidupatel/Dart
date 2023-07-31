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
    var arrNames = ['vaidik', 'nirjal', 'prince','darshan','sahil','ram','Lakshman'];
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
leading: Text('${index+1}'),
            title: Text(arrNames[index]),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrNames.length,
        // scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return Divider(
            height: 10,
            thickness: 2,
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
