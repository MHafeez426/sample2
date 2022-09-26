
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridViewEx(),debugShowCheckedModeBanner: false,));
}
class GridViewEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: GridView.extent(maxCrossAxisExtent: 70,
      crossAxisSpacing: 10,
          mainAxisSpacing: 10,
      padding: EdgeInsets.all(15),
       shrinkWrap: true,
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.deepPurple,
          ),
          Container(
            color: Colors.deepOrange,
          )
        ],
        ),



    );
  }

}