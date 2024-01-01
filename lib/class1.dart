import 'package:flutter/material.dart';

void main ()=>runApp(MaterialApp(
  home: class1(),
));

class class1 extends StatefulWidget {
  const class1({super.key});

  @override
  State<class1> createState() => _class1State();
}

class _class1State extends State<class1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Mavjud Aksiyalar"),),
      body: Text('1 oyna home'),);
  }
}