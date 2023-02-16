// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/main_input.dart';
import 'package:magmascreen/shared/select_bs.dart';
import 'package:magmascreen/utils/constants.dart';

class Step2 extends StatelessWidget {
  const Step2({Key? key, required this.nextScreen}) : super(key: key);

  final Function nextScreen;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void swichtScreenAction() {
      nextScreen(3);
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
                    color: kPrimaryColor),
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
            'Etape 2',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "Document d'identification",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          SelectBs(
            list: const [
              {'label': "CNI (Carte nationale d'identité)", 'value': 'CNI'},
              {'label': "AI (Attestation d'identité)", 'value': 'AI'},
              {'label': 'PASSEPORT', 'value': 'PASSEPORT'},
            ],
            title: "Type de piece d'identité",
          ),
          SizedBox(
            height: 15,
          ),
          MainInput(
            title: 'Numéro de la piece',
            hintText: 'Entrez vos prénoms',
            defaultValue: 'CI1012 120120',
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
