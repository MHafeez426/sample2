import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: TabBarr(),debugShowCheckedModeBanner: false,));
}
class TabBarr extends StatefulWidget{
  @override
  State<TabBarr> createState() => _TabBarrState();
}

class _TabBarrState extends State<TabBarr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TabView",
      theme: ThemeData(
          primarySwatch: Colors.amber
      ),
      home: Homepage(),
    );
  }}
class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
length: 3,
child: Scaffold(
appBar: AppBar(
  title: Center(
    child: Text("TabBar"),

  ),
  bottom: TabBar(
    tabs: [Tab(
      icon:Icon(Icons.home_filled),
    text: "HOME"),
      Tab(icon: Icon(Icons.message_rounded),
      text:"MESSAGE"),
      Tab(icon: Icon(Icons.call_end_outlined),
      text: "CALLS",)
    ],
  ),
),
      body: const TabBarView(children: [
        Center(
          child:Icon(Icons.home),
        ),
        Center(
          child:Icon(Icons.message),
        ),
        Center(child:Icon(Icons.call)
        )
      ]),
      ),
    );
  }
  }
