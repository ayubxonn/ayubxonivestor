
import 'package:flutter/material.dart';
import 'package:investordastur/asosiy.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home: investapp(),
    ));

class investapp extends StatefulWidget {
  const investapp({super.key});

  @override
  State<investapp> createState() => _investappState();
}

class _investappState extends State<investapp> {
  final fnom = TextStyle(fontSize: 30, fontFamily: 'lobster');
  String nomstr = 'Xush Kelibsiz';

  void nomvoid() async {
    await Future.delayed(Duration(seconds: 5), () {
      setState(() {
        nomstr = 'Xush Kelibsiz';
      });
    });
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) => Navigator.of(context)
        .pushReplacement(CupertinoPageRoute(builder: (nom2) => SignInPage2())));
    nomvoid();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assetslottie/backrasm.jfif",),fit: BoxFit.cover),
          gradient: LinearGradient(
        colors: [Colors.grey, Colors.blue],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: const Color.fromARGB(255, 3, 62, 111)),
                width: 150,
                height: 150,
                child: Center(
                    child: Lottie.asset('assetslottie/animation.json',)),
              ),
            ),
           
          ],
        ),
      ),
    ));
  }
}
