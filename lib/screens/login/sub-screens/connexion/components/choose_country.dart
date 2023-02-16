// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({
    super.key,
  });

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  static const List<Map<String, String>> countries = [
    {
      'country': "Cote d'Ivoire",
      'number': '+225',
      'flag':
          'https://www.larousse.fr/encyclopedie/data/images/1009652-Drapeau_de_la_C%C3%B4te_dIvoire.jpg'
    },
    {
      'country': "Bénin",
      'number': '+229',
      'flag': 'https://presidence.bj/upload/images/ckeditor/drapeau.png'
    },
    {
      'country': "Mali",
      'number': '+236',
      'flag':
          'https://africa.la-croix.com/wp-content/uploads/2016/10/Flag_of_Mali.svg_.png'
    },
  ];

  late String _dropDownValue = countries[0]['number']!;
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(197, 197, 197, 0.322)),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                isExpanded: true,
                
                elevation: 0,
                underline: Container(width: 0),
                value: _dropDownValue,
                items: countries
                    .map((item) => DropdownMenuItem(
                          value: item['number'] as String,
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(item['flag']!)),
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(item['country']!)
                            ],
                          ),
                        ))
                    .toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _dropDownValue = newValue!;
                  });
                }),
          ),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          decoration: BoxDecoration(
              border: Border.all(color: Color.fromRGBO(197, 197, 197, 0.322)),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            children: [
              Container(
                height: 40,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(
                  color: Color.fromRGBO(197, 197, 197, 0.322),
                  width: 2,
                ))),
                child: Text(_dropDownValue),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: TextField(
                      style: TextStyle(fontSize: 15),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "N° de telephone",
                        hintStyle:
                            TextStyle(color: kTextColor.withOpacity(0.5)),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      )))
            ],
          ),
        )
      ],
    );
  }
}
