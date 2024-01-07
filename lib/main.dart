import 'package:firstapp/home_page.dart';
import 'package:flutter/material.dart';

//It was the entry point of the flutter application
void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(
        
      ) 
    );
  }
}
