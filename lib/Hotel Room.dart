import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Appbarsec(),
  ));
}

//AppBar Section
class Appbarsec extends StatefulWidget {
  @override
  State<Appbarsec> createState() => _AppbarsecState();
}

class _AppbarsecState extends State<Appbarsec> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(180),
        child: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child:
                      Text("TYPE YOUR LOCATION", selectionColor: Colors.black),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "ENTER LOCATION",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
