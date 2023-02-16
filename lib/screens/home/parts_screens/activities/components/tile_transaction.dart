import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class TileTransaction extends StatelessWidget {
  const TileTransaction({
    super.key,
    required this.title,
    required this.subTitle,
    required this.montantCount,
  });

  final String title;
  final String subTitle;
  final int montantCount;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(100)),
        child: Icon(
          Icons.near_me,
          color: Colors.black,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontSize: 10),
      ),
      trailing: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: montantCount.toString(),
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(151, 0, 0, 0),
            )),
        TextSpan(
            text: ' XOF',
            style: TextStyle(color: Color.fromARGB(118, 0, 0, 0), fontSize: 10))
      ])),
    );
  }
}
