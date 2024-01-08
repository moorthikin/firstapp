// ignore_for_file: prefer_const_constructors

import 'package:firstapp/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //String name = " ";
  bool onClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Image.asset(
                "assets/images/login.png",
                fit: BoxFit.fill,
              ),
            ),
            const Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "User Name", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Pass Word", labelText: "Password"),
                    keyboardType: TextInputType.number,
                    // onChanged: (value) {
                    //   name = value;
                    //   setState(() {

                    //   });
                    // },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        onClicked = true;
                        Navigator.pushNamed(context, FirstApproutes.homeRoute);
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      child: Container(
                        height: 40,
                        width: 80,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: onClicked ? Colors.green : Colors.indigo,
                            shape: onClicked
                                ? BoxShape.circle
                                : BoxShape.rectangle),
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, FirstApproutes.homeRoute);
                  //   },
                  //   style: const ButtonStyle(
                  //       iconSize: MaterialStatePropertyAll(100.0),
                  //       backgroundColor:
                  //           MaterialStatePropertyAll(Colors.indigo)),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(color: Colors.black),
                  //   ),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
