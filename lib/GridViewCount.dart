import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/apple.jpg",
    "assets/grape.jpeg",
    "assets/banana.jpg",
    "assets/orange.jpg",
    "assets/apple.jpg",
    "assets/orange.jpg",
    "assets/grape.jpeg",
    "assets/banana.jpg",
    "assets/apple.jpg",
    "assets/grape.jpeg",
    "assets/orange.jpg",
    "assets/apple.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GRIDVIEW"),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((BuildContext, index) {return Image.asset(images[index],fit: BoxFit.cover);},
      childCount: 8,
          ),
        padding: EdgeInsets.all(10),
        shrinkWrap: true,
      ),
    );
  }
}
