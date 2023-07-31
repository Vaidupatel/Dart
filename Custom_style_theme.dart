''' 
To use the user define themes we have to make the file which is importing the meterial as well as cupertino both, and in this file we have to initialize our user defined themes, as above in the comment
'''
''' 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle mTextStyle11(
  {
    Color textColor = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }){
  return TextStyle(
fontSize: 11,
color: textColor,
    fontWeight: fontWeight,
  );
}
TextStyle mTextStyle21(){
  return TextStyle(
fontSize: 21,

  );
}
TextStyle mTextStyle16(){
  return TextStyle(
fontSize: 16,

  );
}
'''
import 'package:flutter/material.dart';
import 'package:style_and_theme/UI_Helper/uitl.dart';

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
        textTheme: TextTheme(
            headline1: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.black),
            subtitle1: TextStyle(fontSize: 25, fontWeight: FontWeight.w400,fontStyle: FontStyle.italic)
        ),
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
          backgroundColor: Colors.grey,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Text(
              "Text 1",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Text 2",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(color:Colors.blue),
            ),
            Text("Text 3",
                style: Theme.of(context).textTheme.headline1,),
            Text("Text 4",
                style: mTextStyle16() ),
          ],
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
