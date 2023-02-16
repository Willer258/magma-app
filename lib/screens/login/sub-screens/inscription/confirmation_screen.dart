// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magmascreen/screens/privacy/privacy_screen.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  TextEditingController _firstDigitController = TextEditingController();
  TextEditingController _secondDigitController = TextEditingController();
  TextEditingController _thirdDigitController = TextEditingController();
  TextEditingController _fourthDigitController = TextEditingController();

  void _onKeypadButtonPressed(String value) {
    if (_firstDigitController.text.isEmpty) {
      _firstDigitController.text = value;
    } else if (_secondDigitController.text.isEmpty) {
      _secondDigitController.text = value;
    } else if (_thirdDigitController.text.isEmpty) {
      _thirdDigitController.text = value;
    } else if (_fourthDigitController.text.isEmpty) {
      _fourthDigitController.text = value;
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirmation'),
        backgroundColor: kBackgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Code de verification envoyé au '),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '+225 07 09 53 92 17',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Form(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _firstDigitController,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                          keyboardType: TextInputType.none,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _secondDigitController,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                          keyboardType: TextInputType.none,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _thirdDigitController,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                          keyboardType: TextInputType.none,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        height: 68,
                        width: 64,
                        decoration: BoxDecoration(
                            color: kSecondaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _fourthDigitController,
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(border: InputBorder.none),
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(color: Colors.black),
                          keyboardType: TextInputType.none,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    height: 40,
                  ),
                  Text("Vous n'avez pas recu de code ?"),
                  Container(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Renvoyer le code',
                            style: TextStyle(
                                color: kTextColor, fontWeight: FontWeight.bold),
                          ))),
                ],
              ),
            ),
            Spacer(),
            MainButton(
                title: 'Vérifier le code',
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrivacyScreen()));
                }),
            SizedBox(
              height: 10,
            ),
            CustomKeyboard(
              onKeypadButtonPressed: _onKeypadButtonPressed,
            )
          ],
        ),
      ),
    );
  }
}

class CustomKeyboard extends StatelessWidget {
  const CustomKeyboard({
    super.key,
    required this.onKeypadButtonPressed,
  });
  final Function onKeypadButtonPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                _buildKey('1'),
                _buildKey('2'),
                _buildKey('3'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _buildKey('4'),
                _buildKey('5'),
                _buildKey('6'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _buildKey('7'),
                _buildKey('8'),
                _buildKey('9'),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Spacer(), _buildKey('0'), delete()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildKey(
    String text,
  ) {
    return Expanded(
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.all(5),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(73, 158, 158, 158)),
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          onPressed: () {
            onKeypadButtonPressed(text);
          },
        ),
      ),
    );
  }

  Widget delete() {
    return Expanded(
      child: Container(
        height: double.infinity,
        margin: EdgeInsets.all(5),
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(73, 158, 158, 158)),
          child: Icon(
            Icons.backspace_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            onKeypadButtonPressed('');
          },
        ),
      ),
    );
  }
}
