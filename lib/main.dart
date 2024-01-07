import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: Text("First App"),
          ),
        ),
      ),
    );
  }
}
