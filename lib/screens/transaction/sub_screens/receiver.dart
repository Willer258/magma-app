// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class Receiver extends StatefulWidget {
  const Receiver({Key? key, required this.nextScreen}) : super(key: key);

  final Function nextScreen;
  @override
  State<Receiver> createState() => _ReceiverState();
}

class _ReceiverState extends State<Receiver> {
  void _swichtScreenAction() {
    setState(() {
      widget.nextScreen(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "A qui envoyez-vous de l'argent ?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              text: 'Moi meme',
              contentTeft: Container(
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(100)),
                height: 45,
                width: 45,
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              press: () {}),
          SizedBox(
            height: 15,
          ),
          CustomButton(
              text: "Quelqu'un d'autre",
              contentTeft: Container(
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(100)),
                height: 45,
                width: 45,
                child: Icon(
                  Icons.group,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              press: () {
                _swichtScreenAction();
              }),
          SizedBox(
            height: 15,
          ),
          CustomButton(
              text: 'Une entrerise',
              contentTeft: Container(
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(100)),
                height: 45,
                width: 45,
                child: Icon(
                  Icons.business_sharp,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              press: () {}),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
