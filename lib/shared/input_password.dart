import 'package:flutter/material.dart';

import '../utils/constants.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    required this.title,
    required this.hintText,
    this.isForgot = true,
  });
  final String title;
  final String hintText;
  final bool isForgot;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _hidden = true;

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
                child: Text(widget.title),
              ),
              Row(
                children: [
                  Expanded(
                      child: TextField(
                          obscureText: _hidden,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            hintText: widget.hintText,
                            hintStyle:
                                TextStyle(color: kTextColor.withOpacity(0.5)),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ))),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _hidden = !_hidden;
                        });
                      },
                      icon: Icon(
                        !_hidden
                            ? Icons.visibility_off_outlined
                            : Icons.remove_red_eye_outlined,
                        size: 15,
                        color: Colors.grey,
                      )),
                ],
              )
            ],
          ),
        ),
        widget.isForgot
            ? Container(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Mot de passe oublié ?',
                      style: TextStyle(color: kTextColor),
                    )))
            : Text(""),
      ],
    );
  }
}
