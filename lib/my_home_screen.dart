import 'package:flutter/material.dart';
import 'dart:math';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  final _random = Random();

  Color changeColor() => Color.fromARGB(_random.nextInt(256),
      _random.nextInt(256), _random.nextInt(256), _random.nextInt(256));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(color: Colors.white),
              elevation: 0.0,
            ),
            body: Stack(children: <Widget>[
              SizedBox.expand(
                child: Container(
                  color: changeColor(),
                ),
              ),
              Center(
                 child: GestureDetector(
                   onTap: (){setState(() {
                     changeColor();
                   });},
                   child: Container(
                     child: Text(
                        textAlign: TextAlign.center,
                        'Hey there!', style:  TextStyle(
                        fontSize: 20, fontStyle: FontStyle.italic, fontWeight: FontWeight.w800)),
                        padding: EdgeInsets.all(50),
                        decoration: BoxDecoration(color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(color: Colors.grey.shade600, offset:Offset(5,5), blurRadius: 12, spreadRadius: 1),
                          BoxShadow(color: Colors.white, offset:Offset(-5,-5), blurRadius: 15, spreadRadius: 1),
                        ]),
                   ),
                 )
              )
            ]
            ))
            );
  }
}
