import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: Text("I Am Poor"),
        ),
        body: Center(
          child: Image(
            image: AssetImage("images/coal.png"),
          ),
        ),
      ),
    ),
  );
}
