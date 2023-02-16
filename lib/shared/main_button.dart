// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:magmascreen/utils/constants.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.press,
    this.type = 'primary',
    this.textColor = 'white',
    this.icons,
    this.color = 'non-defini',
  });

  final String title;
  final Function() press;
  final String type;
  final String textColor;
  final String color;
  final icons;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: type == 'primary'
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: press,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icons != null
                      ? Container(
                          child: Icon(
                            icons,
                            color: textColor == 'white'
                                ? Colors.white
                                : Colors.black,
                          ),
                          margin: const EdgeInsets.only(right: kDefaultPadding),
                        )
                      : const Text(''),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: textColor == 'white' ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ))
          : type == 'secondary'
              ? ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: kSecondaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: press,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icons != null
                          ? Container(
                              child: Icon(
                                icons,
                                color: textColor == 'white'
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              margin:
                                  const EdgeInsets.only(right: kDefaultPadding),
                            )
                          : const Text(''),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: textColor == 'white'
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ],
                  ))
              : type == 'text'
                  ? TextButton(
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: press,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          icons != null
                              ? Container(
                                  child: Icon(
                                    icons,
                                    color: textColor == 'white'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  margin: const EdgeInsets.only(
                                      right: kDefaultPadding),
                                )
                              : const Text(''),
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: textColor == 'white'
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ))
                  : type == 'ghost'
                      ? TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: kSecondaryColor.withOpacity(0.9),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: press,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              icons != null
                                  ? Container(
                                      child: Icon(
                                        icons,
                                        color: textColor == 'white'
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      margin: const EdgeInsets.only(
                                          right: kDefaultPadding),
                                    )
                                  : const Text(''),
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: textColor == 'white'
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ))
                      : const Text(''),
    );
  }
}

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.press, required this.url});
  final Function() press;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150), color: Colors.white),
      child: TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(kDefaultPadding - 5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(500))),
          onPressed: press,
          child: Image.asset(url)),
    );
  }
}

class HighIconButton extends StatelessWidget {
  const HighIconButton({
    super.key,
    required this.title,
    required this.icon,
    required this.press,
    required this.color,
  });

  final String title;
  final IconData icon;
  final Function() press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: TextButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(500)),
              child: Icon(
                icon,
                color: Colors.black87,
                size: 35,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              title,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: press,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.contentTeft,
    required this.press,
    this.arrow = false,
    this.type = 'text',
  });

  final String text;
  final Widget contentTeft;
  final Function() press;
  final bool arrow;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(width: 1, color: Color.fromARGB(57, 158, 158, 158))),
      child: TextButton(
          onPressed: press,
          style: TextButton.styleFrom(
              padding: EdgeInsets.all(kDefaultPadding),
              backgroundColor:
                  type == 'primary' ? kPrimaryColor : Colors.transparent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  contentTeft,
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: type == 'primary' ? Colors.white : Colors.black,
                        fontSize: 15),
                  )
                ],
              ),
              arrow
                  ? Icon(
                      Icons.arrow_right,
                      color: Color.fromARGB(115, 158, 158, 158),
                    )
                  : Text('')
            ],
          )),
    );
  }
}
