// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/home_screen.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/text_example.dart';

import '../../utils/constants.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              "Conditions d'utilization",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: size.height / 1.23,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(), //S
                child: TextExample(),
              ),
            ),
            Spacer(),
            MainButton(
              title: "J'accepte",
              press: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 1),
                    pageBuilder: (context, animation, primaryAnimation) =>
                        HomeScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
