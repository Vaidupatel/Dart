import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(User_ip());
}

class User_ip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "User Input",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  var user_name = TextEditingController();
  var Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("User inout")),
        body: Center(
            child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      // enabled: false,
                      keyboardType: TextInputType.number,
                      controller: user_name,
                      decoration: InputDecoration(
                          hintText: "Enter Userid",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.pink, width: 3),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.yellow),
                          ),
                          // suffixText: "User name",
                          // suffixIcon: IconButton(
                          //   icon: Icon(Icons.visibility, color: Colors.grey),
                          //   onPressed: () {},
                          // ),
                          prefixIcon: Icon(Icons.account_circle_outlined,
                              color: Colors.red)),
                    ),
                    Container(
                      height: 10,
                    ),
                    TextField(
                      controller: Password,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                          hintText: "Enter Pasword",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.pink),
                          )),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          String uname = user_name.text.toString();
                          String pass = Password.text;
                          print("User name: " + uname);
                          print("Pass: $pass");
                        },
                        child: Text("Submit")),
                  ],
                ))));
  }
}
