// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/main_input.dart';
import 'package:magmascreen/utils/constants.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Envoyer à quelqu'un d'autre",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  type: 'primary',
                  text: 'Selectionner un contact',
                  contentTeft: Container(
                    decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(100)),
                    height: 40,
                    width: 40,
                    child: Icon(
                      Icons.contact_phone_outlined,
                      size: 25,
                      color: Colors.black,
                    ),
                  ),
                  press: () {}),
              SizedBox(
                height: 15,
              ),
              Row(children: <Widget>[
                Expanded(child: Divider()),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text(
                    "Ou",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Expanded(child: Divider()),
              ]),
              SizedBox(
                height: 30,
              ),
              MainInput(
                  title: 'Nom et prénom',
                  hintText: 'Entrer le nom et le prenom du destinataire'),
              SizedBox(
                height: 20,
              ),
              NumberInput(
                  title: 'Compte mobile money',
                  hintText: "Entrer le numero du destinataire"),
              SizedBox(
                height: 20,
              ),
              MainInput(
                  title: 'Adresse email (Facultatif)',
                  hintText: "Entrer l'adresse email destinataire"),
              SizedBox(
                height: size.height * 0.21,
              ),
              MainButton(title: 'Suivant', press: () {})
            ],
          ),
        ),
      ],
    );
    ;
  }
}
