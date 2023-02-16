import 'package:flutter/material.dart';
import 'package:magmascreen/utils/routes.dart';

import 'utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magma send',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // useMaterial3: true,
          scaffoldBackgroundColor: kBackgroundColor,
          primarySwatch: Palette.kToPrimary,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/',
      routes: routes,
    );
  }
}
