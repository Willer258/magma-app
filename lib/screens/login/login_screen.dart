// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/login/sub-screens/connexion/connexion_sub_screen.dart';
import 'package:magmascreen/utils/constants.dart';

import '../../shared/main_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/login_bg.webp'))),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(2, 255, 255, 255),
                Color.fromARGB(500, 82, 82, 82)
              ],
            )),
            child: SafeArea(
                minimum: EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      width: 100,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Text(
                      "Envoyer de l'argent rapidement et a moindre cout",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MainButton(
                      press: () {},
                      title: 'Commencer',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MainButton(
                      press: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    ConnexionScreen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },
                      type: 'text',
                      title: 'Se connecter',
                    )
                  ],
                )),
          )),
    );
  }
}
