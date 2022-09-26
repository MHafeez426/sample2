import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample2/GridView.dart';
import 'package:sample2/GridViewCount.dart';

void main() {
  runApp(
      MaterialApp(home: TabwithBottom(), debugShowCheckedModeBanner: false,));
}

class TabwithBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SHOPPING AREA",
      theme: ThemeData(primarySwatch: Colors.grey
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    Icon(Icons.home_max_outlined,
      size: 150,),
    Icon(Icons.collections_outlined, size: 150,),
    Icon(Icons.notifications,
        size: 150),
    Icon(Icons.account_circle,
        size: 150),
    Icon(Icons.shopping_cart,
      size: 150,)
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(length: 3,
      child: Scaffold(
          appBar: AppBar(title: Center(child: Text("Pick your items"),
          ),
              bottom: TabBar(
                tabs: [Row(
                  children: [
                    SizedBox(width: 50,
                      height: 20,
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(
                              builder: (BuildContext) => MyApp()));
                    },
                        child: Text("Grocery",)
                    )
                    , SizedBox(width: 50,
                      height: 20,),
                    ElevatedButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (BuildContext) => GridViewww()),)
                      ;
                    }, child: Text("Electronics")),

                      
                  ],
                ),
                ],
          )
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined,
          ), label: "Home"),
          BottomNavigationBarItem(icon:
          Icon(Icons.collections_outlined,), label: "Catogories"),
          BottomNavigationBarItem(icon:
          Icon(Icons.notifications),
              label: "Notifications"),
          BottomNavigationBarItem(icon:
          Icon(Icons.account_circle),
              label: "Account"),
          BottomNavigationBarItem(icon:
          Icon(Icons.shopping_cart),
            label: "Your Cart",),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        backgroundColor: Colors.black54,
      ),
    )
    ,
    );
  }
}
