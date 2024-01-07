import 'package:firstapp/pages/login_page.dart';
import 'package:firstapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      themeMode: ThemeMode.light,
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      theme: ThemeData(
        //primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.deepPurple,
      ),
      //It was the initial Route when application start the this screen will first appear.
      initialRoute: "/",
      //we declare a routes "/" it was the default route after we customize as per our wish.
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage()
      },
    );
  }
}
