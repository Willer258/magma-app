import 'package:flutter/material.dart';
import 'package:magmascreen/screens/login/login_screen.dart';
import 'package:magmascreen/screens/splash/splash_screen.dart';

var routes = {
  '/': ((ctx) => const SplashScreen()),
  LoginScreen.routeName: ((ctx) => const LoginScreen()),
};
