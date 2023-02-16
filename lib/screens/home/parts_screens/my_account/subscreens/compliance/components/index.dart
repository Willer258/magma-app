import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class Index extends StatelessWidget {
  const Index({Key? key, required this.nextScreen}) : super(key: key);

  final Function nextScreen;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    void swichtScreenAction() {
      nextScreen(1);
    }

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
                  Icons.task_alt,
                  size: 100,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                'Verifier votre compte',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 19,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                    textAlign: TextAlign.center,
                    ' Sed sed augue leo. Suspendisse potenti. Cras vehicula sodales erat ac efficitur. Donec dictum tortor et massa eleifend maximus semper vel ligula'),
              )
            ],
          ),
        ),
        Spacer(),
        MainButton(
            title: 'Commencer',
            press: () {
              swichtScreenAction();
            })
      ],
    );
  }
}
