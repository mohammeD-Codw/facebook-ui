import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentSelector=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(currentSelector==0?'hello in 0':'hi '),),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home',),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'home',),
      ],onTap:(value){
        currentSelector=value;
        setState(() {

        });

      } ,
      currentIndex: currentSelector,),
    );
  }
}
