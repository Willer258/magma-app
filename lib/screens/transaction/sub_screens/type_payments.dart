// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';

class TypePayments extends StatefulWidget {
  const TypePayments({Key? key, required this.nextScreen}) : super(key: key);
  final Function nextScreen;
  @override
  State<TypePayments> createState() => _TypePaymentsState();
}

class _TypePaymentsState extends State<TypePayments> {
  void _swichtScreenAction() {
    setState(() {
      widget.nextScreen(2);
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
            'Moyen de paiement',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              text: 'Virement bancaire',
              contentTeft: Icon(
                Icons.business_sharp,
                size: 30,
                color: Colors.black,
              ),
              press: () {
                _swichtScreenAction();
              }),
          SizedBox(
            height: 15,
          ),
          CustomButton(
              text: 'Mobile money',
              contentTeft: Icon(
                Icons.mobile_friendly_outlined,
                size: 30,
                color: Colors.black,
              ),
              press: () {
                _swichtScreenAction();
              }),
        ],
      ),
    );
  }
}
