// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/login/sub-screens/connexion/components/choose_country.dart';
import 'package:magmascreen/screens/login/sub-screens/inscription/confirmation_screen.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text('Numéro de télephone'),
        elevation: 0,
      ),
      body: SafeArea(
          minimum: EdgeInsets.all(kDefaultPadding),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(100)),
                      height: 170,
                      width: 170,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Icon(
                        Icons.phone_android_rounded,
                        size: 90,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Text(
                  'Nous vous enverrons un code de verification a 4 chiffre',
                  textAlign: TextAlign.center,
                ),
              ),
              ChooseCountry(),
              SizedBox(
                height: size.height / 3.2,
              ),
              MainButton(title: 'Continuer', press: ()  {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    ConfirmationScreen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                        );
                      },)
            ],
          )),
    );
  }
}
