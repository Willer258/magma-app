// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

import 'components/ending.dart';
import 'components/index.dart';
import 'components/step1.dart';
import 'components/step2.dart';
import 'components/step3.dart';

class Compliance extends StatefulWidget {
  const Compliance({Key? key}) : super(key: key);

  @override
  State<Compliance> createState() => _ComplianceState();
}

class _ComplianceState extends State<Compliance> {
  int _selectedIndex = 0;
  void changeScreen(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screens = [
      Index(nextScreen: changeScreen),
      Step1(nextScreen: changeScreen),
      Step2(
        nextScreen: changeScreen,
      ),
      Step3(
        nextScreen: changeScreen,
      ),
      Ending()
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (_selectedIndex > 1 && _selectedIndex < screens.length - 1)
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
        ],
        leading: _selectedIndex > 0 && _selectedIndex < screens.length - 1
            ? Column(
                children: [
                  _selectedIndex > 1
                      ? IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            setState(() {
                              _selectedIndex = _selectedIndex - 1;
                            });
                          })
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              _selectedIndex = _selectedIndex - 1;
                            });
                          },
                          icon: Icon(Icons.close)),
                ],
              )
            : Text(''),
        centerTitle: true,
        title: Text('Compliance'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(kDefaultPadding),
        child: Container(
          child: screens[_selectedIndex],
        ),
      ),
    );
  }
}


