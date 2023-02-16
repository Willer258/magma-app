// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class SelectBs extends StatefulWidget {
  const SelectBs({Key? key, required this.list, required this.title})
      : super(key: key);
  final List<Map<String, String>> list;
  final String title;

  @override
  _SelectBsState createState() => _SelectBsState();
}

class _SelectBsState extends State<SelectBs> {
  String _value = '';

  @override
  void initState() {
    super.initState();
    setState(() {
      _value = widget.list[0]['value']!;
    });
  }

  void receiveValue(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(width: 1, color: Color.fromARGB(57, 158, 158, 158))),
      child: TextButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: ((context) {
                  return ContainerModalBottomSheet(
                    list: widget.list,
                    title: widget.title,
                    defaultValue: _value,
                    giveValue: receiveValue,
                  );
                }));
          },
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding / 2,
                  vertical: kDefaultPadding / 1.5),
              backgroundColor: Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _value,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 20,
                color: Color.fromARGB(115, 158, 158, 158),
              )
            ],
          )),
    );
  }
}

class ContainerModalBottomSheet extends StatelessWidget {
  const ContainerModalBottomSheet(
      {Key? key,
      required this.title,
      required this.list,
      required this.giveValue,
      required this.defaultValue})
      : super(key: key);

  final String title;
  final List<Map<String, String>> list;
  final Function giveValue;
  final String defaultValue;

  @override
  Widget build(BuildContext context) {
    void getValue(value) {
      giveValue(value);
    }

    return Container(
      padding: EdgeInsets.only(top: kDefaultPadding / 2),
      height: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView(
              children: list
                  .map(
                    (item) => RadioListTile(
                        selected: true,
                        title: Text(item['label']!),
                        value: item['value'],
                        groupValue: defaultValue,
                        onChanged: (value) {
                          getValue(value);
                          Navigator.pop(context);
                        }),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
