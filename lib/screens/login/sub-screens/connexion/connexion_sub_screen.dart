// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/home_screen.dart';
import 'package:magmascreen/screens/login/sub-screens/connexion_by_email/connexion_by_email_sub_screen.dart';
import 'package:magmascreen/screens/login/sub-screens/inscription/Inscription_screen.dart';
import 'package:magmascreen/shared/input_password.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

import 'components/choose_country.dart';

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            kSecondaryColor,
          ],
        )),
        child: SafeArea(
            minimum: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    'Entrer votre numéro de telephone et mot de passe',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ChooseCountry(),
                  SizedBox(
                    height: 10,
                  ),
                  PasswordInput(
                    hintText: 'Entrez votre mot de passe',
                    title: 'Mot de passe',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MainButton(
                    title: 'Connexion',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                  ),
                  SizedBox(
                    height: size.height / 9,
                  ),
                  MainButton(
                      title: 'Utiliser mon adresse email',
                      type: 'ghost',
                      textColor: 'black',
                      icons: Icons.mail,
                      press: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    ConnexionByEmailSubScreen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      }),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialButton(
                        press: () {},
                        url: 'assets/logos/google.png',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SocialButton(
                        press: () {},
                        url: 'assets/logos/fb.png',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SocialButton(
                        press: () {},
                        url: 'assets/logos/apple.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Text("Vous n'avez pas de compte"),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        InscriptionScreen(),
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
                          child: const Text(
                            'Créer un compte',
                            style: TextStyle(
                                color: kTextColor, fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
