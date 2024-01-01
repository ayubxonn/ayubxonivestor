import 'package:flutter/material.dart';

void main ()=>runApp(MaterialApp(
  home: class2(),
));

class class2 extends StatefulWidget {
  const class2({super.key});

  @override
  State<class2> createState() => _class2State();
}

class _class2State extends State<class2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('2 oyna done'),);
  }
}