// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/parts_screens/activities/components/tile_transaction.dart';
import 'package:magmascreen/utils/constants.dart';

class Transactions extends StatefulWidget {
  const Transactions({
    super.key,
  });

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  static const List<Map<String, String>> periodes = [
    {'when': "Aujourd'hui", 'value': "Aujourd'hui"},
    {'when': "Cette semaine", 'value': 'Cette semaine'},
    {'when': "Ce mois", 'value': 'Ce mois'},
  ];

  late String _dropDownValue = periodes[0]['number']!;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Transactions',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              DropdownButton(
                  underline: Container(width: 0),
                  value: "Aujourd'hui",
                  items: periodes
                      .map(
                        (item) => DropdownMenuItem(
                            value: item['when'] as String,
                            child: Text(
                              item['value']!,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            )),
                      )
                      .toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _dropDownValue = newValue!;
                    });
                  }),
            ],
          ),
          TileTransaction(
            title: "Transfert d'argent à Myriam",
            subTitle: 'Il y a 30 minutes ',
            montantCount: 35000,
          ),
          TileTransaction(
            title: "Transfert d'argent à Jean",
            subTitle: 'Il y a 2 heures ',
            montantCount: 40000,
          ),
          TileTransaction(
            title: "Transfert d'argent à Alex",
            subTitle: 'Il y a 3 heures ',
            montantCount: 3005000,
          ),
        ],
      ),
    );
  }
}
