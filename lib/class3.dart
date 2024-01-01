import 'package:flutter/material.dart';

void main ()=>runApp(MaterialApp(
  home: class3(),
));

class class3 extends StatefulWidget {
  const class3({super.key});

  @override
  State<class3> createState() => _class3State();
}

class _class3State extends State<class3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('3 oyna add'),);
  }
}