// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class AmmontResult extends StatelessWidget {
  const AmmontResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: double.infinity,
      padding: const EdgeInsets.only(left: kDefaultPadding / 2),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(197, 197, 197, 0.322)),
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8),
                  decoration: const BoxDecoration(),
                  child: Text('Le béneficiaire recoit'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '1050',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          Container(
            height: 75,
            width: 75,
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: Icon(Icons.sync_alt),
            ),
          )
        ],
      ),
    );
  }
}
