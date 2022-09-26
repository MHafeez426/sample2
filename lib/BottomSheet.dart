import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample2/GridViewCount.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));

}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HomeScreen();
  }

}


class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _show(BuildContext ctx){
    showModalBottomSheet(

        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx)=>
    Padding(padding:  EdgeInsets.only(
      top: 15,
      bottom: MediaQuery.of(ctx).viewInsets.bottom,
      left: 15,
      right: 15,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [TextField(
        decoration: InputDecoration(
          label: Text("Name",style: TextStyle(color: Colors.black),),
        ),
        keyboardType: TextInputType.name,
      ),
      TextField(
       decoration: InputDecoration(
         label: Text("Phone",style: TextStyle(color: Colors.red),
       ),
      ),
    keyboardType: TextInputType.number,
      ),
      SizedBox(
        height: 15
      ),
        ElevatedButton(onPressed: () {Navigator.of(ctx).pop();}, child: Text("SUBMIT"))
      ],
    ),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _show(context),

      )
    );
  }
}