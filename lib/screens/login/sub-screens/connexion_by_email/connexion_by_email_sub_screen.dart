// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/home_screen.dart';
import 'package:magmascreen/shared/input_password.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/main_input.dart';
import 'package:magmascreen/utils/constants.dart';

class ConnexionByEmailSubScreen extends StatelessWidget {
  const ConnexionByEmailSubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text(
          'Se connecter',
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Entrer votre adresse email et mot de passe',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MainInput(
                      title: 'Adresse email',
                      hintText: 'Entrez votre adresse email'),
                  SizedBox(
                    height: 20,
                  ),
                  PasswordInput(
                      title: 'Mot de passe',
                      hintText: 'Entrez votre mot de passe'),
                  SizedBox(
                    height: size.height / 2.5,
                  ),
                  MainButton(
                    title: 'Connexion',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
