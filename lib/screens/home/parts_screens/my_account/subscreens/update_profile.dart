// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/shared/main_button.dart';
import 'package:magmascreen/shared/main_input.dart';
import 'package:magmascreen/utils/constants.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text('Informations personnelles'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              MainInput(
                title: 'Nom',
                hintText: 'Modifier votre nom',
                defaultValue: 'Lemay',
              ),
              SizedBox(
                height: 15,
              ),
              MainInput(
                title: 'Prénom(s)',
                hintText: 'Modifier votre prénom',
                defaultValue: 'Julie',
              ),
              SizedBox(
                height: 15,
              ),
              MainInput(
                title: 'Pays',
                hintText: 'Votre pays ?',
                defaultValue: "Cote d'Ivoire",
              ),
              SizedBox(
                height: 15,
              ),
              MainInput(
                title: 'Ville',
                hintText: 'Votre pays ?',
                defaultValue: "Abidjan",
              ),
              SizedBox(
                height: size.height * 0.33,
              ),
              MainButton(title: 'Mettre a jour', press: () {})
            ],
          ),
        ),
      ),
    );
  }
}
