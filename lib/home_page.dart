import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
              counter++;
            });
        },),
      body: Center(
        child: GestureDetector(
          child: Text('Contador: $counter', style: TextStyle(fontSize: 20),),
          onTap: (){
            setState(() {
              counter++;
            });
          },
        )),
      );
  }
}