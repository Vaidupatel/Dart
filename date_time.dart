import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
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
    var time = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Current time : ${DateFormat('Hms').format(time)}",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Current time")),
              Container(
                height: 100,
              ),
              Text("Select Date", style: TextStyle(fontSize: 20)),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? datePiked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000));
                    if (datePiked != null) {
                      print(
                          "Date selected : ${datePiked.day} ${datePiked.month} ${datePiked.year}");
                    }
                  },
                  child: Text("Show")),
              Container(height: 100),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pikedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial);
                    if(pikedTime != null) {
                      print("Time selected: ${pikedTime.hour} ${pikedTime.minute} ");
                    }
                  },
                  child: Text("Select Time"))
            ],
          ),
        ),
      ),
    );
  }
}
