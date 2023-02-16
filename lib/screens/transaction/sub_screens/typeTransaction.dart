// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';

class TypeTransaction extends StatefulWidget {
  final Function nextScreen;
  const TypeTransaction({super.key, required this.nextScreen});

  @override
  State<TypeTransaction> createState() => _TypeTransactionState();
}

class _TypeTransactionState extends State<TypeTransaction> {
  void _swichtScreenAction() {
    setState(() {
      widget.nextScreen(1);
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
            'Type de transaction',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
              text: 'Local',
              contentTeft: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/a3/7c/b2/a37cb2c366c8e61e359ee035d0fa175b.jpg')),
                    // color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(30)),
              ),
              press: () {
                _swichtScreenAction();
              }),
          SizedBox(
            height: 15,
          ),
          CustomButton(
              text: 'International',
              contentTeft: Icon(
                Icons.public,
                size: 40,
              ),
              press: () {
                _swichtScreenAction();
              }),
        ],
      ),
    );
  }
}
