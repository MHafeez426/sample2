import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
runApp(MaterialApp(home: HotelCP(),debugShowCheckedModeBanner: false,theme: ThemeData(primarySwatch:Colors.pink ),));
}
class HotelCP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "SEARCH",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),
          label: "FAVORITES"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "SETTINGS"),
        ],
      ),

    );
  }

}