import 'package:blocapiapp/src/screen/about.dart';
import 'package:blocapiapp/src/screen/billing.dart';
import 'package:blocapiapp/src/screen/change_password.dart';
import 'package:blocapiapp/src/screen/content_edukasi.dart';
import 'package:blocapiapp/src/screen/forgot_password.dart';
import 'package:blocapiapp/src/screen/home.dart';
import 'package:blocapiapp/src/screen/more_menu.dart';
import 'package:blocapiapp/src/screen/login.dart';
import 'package:blocapiapp/src/screen/profile.dart';
import 'package:blocapiapp/src/screen/register.dart';
import 'package:blocapiapp/src/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/billing',
  routes: {
    //no login
    '/splash': (context) => SplashScreenPage(),
    '/login': (context) => LoginPage(),
    //'/verification': (context) => VerificationPage(),
    '/forgot_password': (context) => ForgotPasswordResetPage(),
    '/registration': (context) => RegisterPage(),

    //need login
    '/home': (context) => HomePage(),
    '/more': (context) => MoreMenuPage(),
    '/content': (context) => ContentEdukasiPage(),
    '/profile': (context) => ProfilePage(),
    '/billing': (context) => BillingPage(),
    '/about': (context) => AboutPage(),
    '/change_password': (context) => ChangePasswordPage()
  },
));