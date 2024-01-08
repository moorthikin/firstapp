// ignore_for_file: prefer_const_constructors

import 'package:firstapp/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, FirstApproutes.homeRoute);
                    },
                    style: const ButtonStyle(
                        iconSize: MaterialStatePropertyAll(100.0),
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.indigo)),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
