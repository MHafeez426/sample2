//Expanded widget

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expandedtrial(),
    debugShowCheckedModeBanner: false,
  ));
}

class Expandedtrial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child:
                Icon(Icons.search)
            ,),
            Center(
              child: Text(
                "Applicant",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 1),
              child: Icon(Icons.account_circle),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 60),
              color: Colors.black54,
            ),
            Expanded(
                child: Container(
              color: Colors.orange,
              width: 100,
            ))
          ],
        ),
      ),
    );
  }
}
