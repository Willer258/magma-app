// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/transaction/sub_screens/ammount.dart';
import 'package:magmascreen/screens/transaction/sub_screens/receiver.dart';
import 'package:magmascreen/screens/transaction/sub_screens/send_money.dart';
import 'package:magmascreen/screens/transaction/sub_screens/typeTransaction.dart';
import 'package:magmascreen/screens/transaction/sub_screens/type_payments.dart';
import 'package:magmascreen/utils/constants.dart';

class TranscationScreen extends StatefulWidget {
  const TranscationScreen({Key? key}) : super(key: key);

  @override
  State<TranscationScreen> createState() => _TranscationScreenState();
}

class _TranscationScreenState extends State<TranscationScreen> {
  int _selectedIndex = 0;
  void changeScreen(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var subscreens = [
      TypeTransaction(nextScreen: changeScreen),
      TypePayments(nextScreen: changeScreen),
      Ammount(
        nextScreen: changeScreen,
      ),
      Receiver(
        nextScreen: changeScreen,
      ),
      SendMoney()
    ];
    return Scaffold(
        body: SafeArea(
      minimum: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding / 2),
      child: ListView (
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_selectedIndex > 0)
                IconButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = _selectedIndex - 1;
                      });
                    },
                    icon: Icon(Icons.arrow_back)),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            width: double.infinity,
            child: subscreens[_selectedIndex],
          )
        ],
      ),
    ));
  }
}
