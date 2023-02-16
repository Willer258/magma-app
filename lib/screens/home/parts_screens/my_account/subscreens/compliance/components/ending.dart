// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class Ending extends StatelessWidget {
  const Ending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height / 10,
        ),
        Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(100)),
                height: 170,
                width: 170,
                child: const Icon(
                  Icons.published_with_changes_outlined,
                  size: 100,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                'Verification en cours',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                    textAlign: TextAlign.center,
                    ' Sed sed augue  Cras vehicula sodales erat ac efficitur. Donec dictum tortor et massa eleifend maximus semper vel ligula'),
              )
            ],
          ),
        ),
        Spacer(),
        MainButton(
            title: "Retour à l'acceuil",
            press: () {
              Navigator.pop(context);
            })
      ],
    );
  }
}
