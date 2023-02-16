// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/main_input.dart';
import 'package:magmascreen/utils/constants.dart';

class Step1 extends StatelessWidget {
  const Step1({Key? key, required this.nextScreen}) : super(key: key);

  final Function nextScreen;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void swichtScreenAction() {
      nextScreen(2);
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 10,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimaryColor),
              ),
              Container(
                width: 60,
                height: 10,
                margin: EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondaryColor),
              ),
              Container(
                width: 60,
                margin: EdgeInsets.only(right: 8),
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kSecondaryColor),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Etape 1',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'Informations générales',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          MainInput(
              title: 'Nom',
              hintText: 'Entrez votre nom',
              defaultValue: 'Lemay'),
          SizedBox(
            height: 15,
          ),
          MainInput(
            title: 'Prénom(s)',
            hintText: 'Entrez vos prénoms',
            defaultValue: 'Julie',
          ),
          SizedBox(
            height: 15,
          ),
          MainInput(
            title: 'Pays',
            hintText: 'Votre pays ?',
            defaultValue: "Cote d'ivoire",
          ),
          SizedBox(
            height: 15,
          ),
          MainInput(
            title: 'Ville',
            hintText: 'Votre ville ?',
            defaultValue: "Abidjan",
          ),
          SizedBox(
            height: size.height / 4.5,
          ),
          MainButton(
              title: 'Suivant',
              press: () {
                swichtScreenAction();
              })
        ],
      ),
    );
  }
}
