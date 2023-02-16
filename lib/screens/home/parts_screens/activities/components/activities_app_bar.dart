import 'package:flutter/material.dart';
import 'package:magmascreen/screens/home/components/profile.dart';
import 'package:magmascreen/utils/constants.dart';

class ActivitiesAppBar extends StatelessWidget {
    const ActivitiesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              Profile(),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications))
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(90, 158, 158, 158),
            ),
            margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          )
        ],
      ),
    );
  }
}
