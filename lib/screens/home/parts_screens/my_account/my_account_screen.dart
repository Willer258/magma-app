// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/find_friends/find_friend.dart';
import 'package:magmascreen/screens/home/parts_screens/my_account/subscreens/beneficiaires/beneficiaires.dart';
import 'package:magmascreen/screens/home/parts_screens/my_account/subscreens/update_profile.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

import 'subscreens/compliance/compliance.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.help_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(150),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.pexels.com/photos/3366753/pexels-photo-3366753.jpeg?auto=compress&cs=tinysrgb&w=1600'))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 25),
                          children: [
                        TextSpan(text: 'Julie '),
                        TextSpan(
                            text: 'Lemay',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ])),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    arrow: true,
                    text: "Modifier mon profil",
                    contentTeft: Container(
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(100)),
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.person,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    press: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  UpdateProfile(),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    arrow: true,
                    text: "Compliance",
                    contentTeft: Container(
                      decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(100)),
                      height: 30,
                      width: 30,
                      child: Icon(
                        Icons.task_alt,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                    press: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          transitionDuration: Duration(seconds: 1),
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Compliance(),
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      arrow: true,
                      text: "Mes cartes",
                      contentTeft: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.card_membership,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      press: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      arrow: true,
                      text: "Transferts planifiés",
                      contentTeft: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.currency_exchange,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      press: () {}),
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      arrow: true,
                      text: "Beneficiaires",
                      contentTeft: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.group,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      press: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(seconds: 1),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    Beneficiaires(),
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
                  SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                      arrow: true,
                      text: "Inviter des amis",
                      contentTeft: Container(
                        decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(100)),
                        height: 30,
                        width: 30,
                        child: Icon(
                          Icons.person_add,
                          size: 15,
                          color: Colors.black,
                        ),
                      ),
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FindFriend()));
                      }),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
