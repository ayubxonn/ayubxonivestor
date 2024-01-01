import 'package:flutter/material.dart';

void main ()=>runApp(MaterialApp(
  home: class4(),
));

class class4 extends StatefulWidget {
  const class4({super.key});

  @override
  State<class4> createState() => _class4State();
}

class _class4State extends State<class4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('4 oyna back'),);
  }
}