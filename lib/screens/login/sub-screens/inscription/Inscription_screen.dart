// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/login/sub-screens/inscription/verification_screen.dart';
import 'package:magmascreen/screens/privacy/privacy_screen.dart';
import 'package:magmascreen/shared/input_password.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/main_input.dart';

import '../../../../utils/constants.dart';

class InscriptionScreen extends StatelessWidget {
  const InscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text(
          'Creer un compte',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              minimum: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  MainInput(title: 'Nom', hintText: 'Entrez votre nom'),
                  SizedBox(
                    height: 20,
                  ),
                  MainInput(
                      title: 'Prénom(s)', hintText: 'Entrez votre prénom'),
                  SizedBox(
                    height: 20,
                  ),
                  MainInput(
                      title: 'Adresse email', hintText: 'Entrez votre email'),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordInput(
                      isForgot: false,
                      title: 'Mot de passe',
                      hintText: 'Entrez votre mot de passe'),
                  SizedBox(
                    height: size.height / 3.3,
                  ),
                  MainButton(
                      title: 'Continuer',
                      press: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    VerificationScreen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      })
                ],
              ))),
    );
  }
}
