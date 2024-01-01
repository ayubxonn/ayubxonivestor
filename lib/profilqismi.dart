

import 'package:flutter/material.dart';
import 'package:investordastur/class1.dart';
import 'package:investordastur/class2.dart';
import 'package:investordastur/class3.dart';
import 'package:investordastur/class4.dart';

void main () => runApp(MaterialApp(
  home: mci(),
));

class mci extends StatefulWidget {
  const mci({super.key});

  @override
  State<mci> createState() => _mciState();
}

class _mciState extends State<mci> {
int nomint = 0;

void nomvoid(sba) {
  setState(() {
    nomint = sba;
  });
}


  List nomlist = [class1(),class2(),class3(),class4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nomlist.elementAt(nomint),
    bottomNavigationBar: BottomNavigationBar(
      items:[
      BottomNavigationBarItem(backgroundColor: Colors.green,
        icon: Icon(Icons.home,),label: 'uy',
      
      ),

       BottomNavigationBarItem(backgroundColor: Colors.pink,
        icon: Icon(Icons.done),label: 'bajarildi'),

        BottomNavigationBarItem(backgroundColor: Colors.yellow,
          icon: Icon(Icons.add),label: 'qowmoq'),

         BottomNavigationBarItem(backgroundColor: Colors.purple,
          icon: Icon(
          Icons.back_hand),label: 'qol'),
      
      
      ],
      onTap: nomvoid,
      currentIndex: nomint,
      fixedColor: Colors.blue,
      iconSize: 30,
      
       ),
  
    );
  }
}










