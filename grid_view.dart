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
      home: const MyHomePage(title: "Greed view"),
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
    var arrColor = [
      Colors.black,
      Colors.pink,
      Colors.yellow,
      Colors.blue,
      Colors.red,
      Colors.green,
      Colors.brown,
      Colors.grey,
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Container(
              color: arrColor[index],
            );
          },
          itemCount: arrColor.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
        )

        /*
            GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(

                color: arrColor[0],
              ),
              Container(
                color: arrColor[1],
              ),
              Container(
                color: arrColor[2],
              ),
              Container(
                color: arrColor[3],
              ),
              Container(
                color: arrColor[4],
              ),
              Container(
                color: arrColor[5],
              ),
              Container(
                color: arrColor[6],
              ),
              Container(
                color: arrColor[7],
              ),
    )
           */

        /*
            child: GridView.extent(maxCrossAxisExtent: 200,

              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(

                  color: arrColor[0],
                ),
                Container(
                  color: arrColor[1],
                ),
                Container(
                  color: arrColor[2],
                ),
                Container(
                  color: arrColor[3],
                ),
                Container(
                  color: arrColor[4],
                ),
                Container(
                  color: arrColor[5],
                ),
                Container(
                  color: arrColor[6],
                ),
                Container(
                  color: arrColor[7],
                ),
              ],
            ),
    */
        );
  }
}
