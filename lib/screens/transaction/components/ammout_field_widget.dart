import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class AmoumtFieldWidget extends StatelessWidget {
  const AmoumtFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 74,
          width: double.infinity,
          padding: const EdgeInsets.only(left: kDefaultPadding / 2),
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromRGBO(197, 197, 197, 0.322)),
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
                    Expanded(
                        child: TextField(
                            keyboardType: TextInputType.phone,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                            decoration: InputDecoration(
                              hintText: 'Montant',
                              hintStyle: TextStyle(
                                  color: kTextColor.withOpacity(0.5),
                                  fontWeight: FontWeight.w300),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ))),
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
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.pinimg.com/originals/a3/7c/b2/a37cb2c366c8e61e359ee035d0fa175b.jpg')),
                      // color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(30)),
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              border: Border.all(color: Color.fromRGBO(197, 197, 197, 0.322))),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '10',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: ' FCFA',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(132, 0, 0, 0),
                                  fontWeight: FontWeight.w400))
                        ])),
                        Text(
                          'Frais de transaction',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: '40',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: ' FCFA',
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Color.fromARGB(132, 0, 0, 0),
                                  fontWeight: FontWeight.w400))
                        ])),
                        Text(
                          "Frais de l'operateur",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(134, 158, 158, 158),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    border: Border.all(
                        color: Color.fromRGBO(197, 197, 197, 0.322))),
                padding: EdgeInsets.all(kDefaultPadding / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '50',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: ' FCFA',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromARGB(132, 0, 0, 0),
                              fontWeight: FontWeight.w400))
                    ])),
                    Text(
                      'Total frais',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
