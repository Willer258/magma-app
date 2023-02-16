// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/utils/constants.dart';

class Step3 extends StatefulWidget {
  const Step3({Key? key, required this.nextScreen}) : super(key: key);
  final Function nextScreen;

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporally = File(image.path);
      setState(() {
        this.image = imageTemporally;
      });
    } on PlatformException catch (e) {
      print('Echec : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    void swichtScreenAction() {
      widget.nextScreen(4);
    }

    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 60,
              height: 10,
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor),
            ),
            Container(
              width: 60,
              height: 10,
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor),
            ),
            Container(
              width: 60,
              margin: EdgeInsets.only(right: 8),
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Etape 3',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          "Importer les documents",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: double.infinity,
          height: size.height / 4.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black12,
          ),
          child: TextButton(
            child: Column(
              children: [
                image != null
                    ? Expanded(
                        child: Container(
                          height: double.infinity,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: FileImage(image!),
                                  fit: BoxFit.contain)),
                        ),
                      )
                    : Padding(
                        padding:
                            const EdgeInsets.only(top: kDefaultPadding / 2),
                        child: Column(
                          children: [
                            Icon(
                              Icons.photo_camera_outlined,
                              color: Colors.black,
                              size: size.height / 9,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Importer la photo de la pièce d'identité",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
              ],
            ),
            style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              pickImage();
            },
          ),
        ),
        Spacer(),
        MainButton(
            title: 'Soummetre ma validation',
            press: () {
              swichtScreenAction();
            })
      ],
    );
  }
}
