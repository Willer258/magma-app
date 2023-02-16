import 'package:flutter/material.dart';
import 'package:magmascreen/screens/transaction/transcation_screen.dart';
import 'package:magmascreen/utils/constants.dart';

class SoldeWidget extends StatelessWidget {
  const SoldeWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Stack(
        children: [
          Container(
            height: 180,
          ),
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                SizedBox(
                  height: 13,
                ),
                Text('Mon solde',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        fontSize: 12)),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '35000000000',
                      style: TextStyle(color: Colors.white, fontSize: 40)),
                  TextSpan(
                      text: ' XOF',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300))
                ]))
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: size.width / 2.7,
            child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  border: Border.all(color: Colors.black87, width: 3),
                  color: kSecondaryColor),
              child: TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.all(kDefaultPadding - 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(500))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TranscationScreen()));
                  },
                  child: Icon(
                    Icons.send,
                    color: Colors.black87,
                    size: 35,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
