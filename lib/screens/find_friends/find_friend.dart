// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class FindFriend extends StatelessWidget {
  const FindFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trouver des amis',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: const Icon(
                    Icons.check,
                    size: 30,
                    color: kSecondaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Trouver des personnes que vous conaissez sur Magmasend',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Envoyer de l'argent rapidement aux personnes dans votre liste de contacts télephonique.Pas besoin de demander des coordonnées"),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100)),
                  height: 70,
                  width: 70,
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: const Icon(
                    Icons.check,
                    size: 30,
                    color: kSecondaryColor,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Incroyable, bénéficier de réduction entre amis',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          "Vous pouvez envoyer de l'argent entre amis Magmasend gratuitement."),
                    ],
                  ),
                )
              ],
            ),
            Spacer(),
            MainButton(title: 'Activer maintenant', press: () {})
          ],
        ),
      ),
    );
  }
}
