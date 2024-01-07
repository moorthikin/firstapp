import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int day1 = 30;
  String name = "Moorthi!";
  double pi = 3.14;
  bool isMale = true;
  num temp = 30.8;

  var day = 76;
  final pii = 3.14;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("First Application  "),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          child: Text("First $day1 $name App " + name),
        ),
      ),
      drawer: Drawer(),
    );
  }

  
}
