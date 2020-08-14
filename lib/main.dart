import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int number=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
      Expanded(
          child: FlatButton(child:Image.asset('images/ball$number.png'),
          onPressed: (){
            setState(() {
              print('I got Clicked');
              number=Random().nextInt(4) +1;
            });
          },
          ),
      ),
        ],
    ),
    );
  }
}
