// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import '../components/ammout_field_widget.dart';
import '../components/amount_result_widget.dart';

class Ammount extends StatefulWidget {
  const Ammount({Key? key, required this.nextScreen}) : super(key: key);

  final Function nextScreen;
  @override
  State<Ammount> createState() => _AmmountState();
}

class _AmmountState extends State<Ammount> {
  void _swichtScreenAction() {
    setState(() {
      widget.nextScreen(3);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AmoumtFieldWidget(),
        SizedBox(
          height: 30,
        ),
        AmmontResult(),
        SizedBox(
          height: 25,
        ),
        SizedBox(
          width: double.infinity,
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(style: TextStyle(color: Colors.black), children: [
                TextSpan(text: "Delai d'arrivé: "),
                TextSpan(
                    children: [TextSpan(text: '2'), TextSpan(text: 'minutes')],
                    style: TextStyle(fontWeight: FontWeight.bold))
              ])),
        ),
        SizedBox(
          height: size.height * 0.38,
        ),
        MainButton(
            title: 'Suivant',
            press: () {
              _swichtScreenAction();
            })
      ],
    );
  }
}
