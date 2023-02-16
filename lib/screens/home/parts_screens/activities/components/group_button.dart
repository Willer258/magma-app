import 'package:flutter/material.dart';
import 'package:magmascreen/screens/transaction/transcation_screen.dart';
import 'package:magmascreen/shared/main_button.dart';

import '../../../../../utils/constants.dart';

class GroupButton extends StatelessWidget {
  const GroupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighIconButton(
            color: kSecondaryColor,
            icon: Icons.send,
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TranscationScreen()));
            },
            title: "Envoyer de l'argent",
          ),
          HighIconButton(
            color: Colors.indigo.withOpacity(0.5),
            icon: Icons.touch_app,
            press: () {},
            title: "Demander un paiement",
          )
        ],
      ),
    );
  }
}
