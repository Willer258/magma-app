// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MainInput extends StatelessWidget {
  const MainInput(
      {super.key,
      required this.title,
      required this.hintText,
      this.defaultValue = ''});

  final String title;
  final String hintText;
  final String defaultValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 74,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromRGBO(197, 197, 197, 0.322)),
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8),
                decoration: const BoxDecoration(),
                child: Text(title),
              ),
              Expanded(
                  child: TextField(
                      controller: TextEditingController(text: defaultValue),
                      style: const TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        hintText: hintText,
                        hintStyle:
                            TextStyle(color: kTextColor.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ))),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberInput extends StatelessWidget {
  const NumberInput({super.key, required this.title, required this.hintText});

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 74,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromRGBO(197, 197, 197, 0.322)),
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 8),
                decoration: const BoxDecoration(),
                child: Text(title),
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 5, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 1,
                                color: Color.fromARGB(136, 158, 158, 158)))),
                    child: Text('+255'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            hintText: hintText,
                            hintStyle:
                                TextStyle(color: kTextColor.withOpacity(0.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ))),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
