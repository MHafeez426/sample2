import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomBarr(),
    debugShowCheckedModeBanner: true,
  ));
}

class BottomBarr extends StatefulWidget {
  @override
  State<BottomBarr> createState() => _BottomBarrState();
}

class _BottomBarrState extends State<BottomBarr> {
  int _selectedindex = 0;
  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(Icons.search, size: 150),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Bottom Bar"),
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black45,
        unselectedItemColor: Colors.limeAccent,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_android),
              backgroundColor: Colors.black,
              label: "Phone"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera,
                semanticLabel: "Camera",
              ),
              label: "camera"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        ],
        currentIndex: _selectedindex,
        onTap: onItemTapped,
        backgroundColor: Colors.grey,
      ),
    );
  }
}
