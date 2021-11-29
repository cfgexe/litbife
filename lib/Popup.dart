// ignore_for_file: file_names, use_key_in_widget_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';

void popup() => runApp(
      MyPopup(),
    );

class MyPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return new AlertDialog(
    title: const Text('Achievement Unlocked!'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("wow, ur old."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          main();
        },
        textColor: Theme.of(context).primaryColor,
        child: Text('Ok'),
      ),
    ],
  ); 
  }
}
