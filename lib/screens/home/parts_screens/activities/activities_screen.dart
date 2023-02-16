// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/parts_screens/activities/components/recent_contact.dart';
import 'package:magmascreen/screens/home/parts_screens/activities/components/sold_widget.dart';
import 'package:magmascreen/utils/constants.dart';

import 'components/activities_app_bar.dart';
import 'components/group_button.dart';
import 'components/transaction_widget.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          ActivitiesAppBar(),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: 20,
                ),
                SoldeWidget(size: size),
                SizedBox(
                  height: 20,
                ),
                GroupButton(),
                SizedBox(
                  height: 20,
                ),
                RecentContact(),
                SizedBox(
                  height: 20,
                ),
                Transactions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
