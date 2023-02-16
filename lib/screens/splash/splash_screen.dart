// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:magmascreen/screens/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) =>
              LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFE265),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(80, 255, 255, 255),
              borderRadius: BorderRadius.circular(200)),
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromARGB(78, 255, 255, 255),
                borderRadius: BorderRadius.circular(200)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(123, 255, 255, 255),
                      borderRadius: BorderRadius.circular(100)),
                  child: Center(
                    child: Text('center logo'),
                  ),
                )
                // Image.asset('name'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
