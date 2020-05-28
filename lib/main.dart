import 'package:blocapiapp/src/screen/billing.dart';
import 'package:blocapiapp/src/screen/change_password.dart';
import 'package:blocapiapp/src/screen/content_edukasi.dart';
import 'package:blocapiapp/src/screen/home.dart';
import 'package:blocapiapp/src/screen/jadwal_dokter.dart';
import 'package:blocapiapp/src/screen/login.dart';
import 'package:blocapiapp/src/screen/more_menu.dart';
import 'package:blocapiapp/src/screen/register.dart';
import 'package:blocapiapp/src/screen/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/home',
  routes: {
    '/splash': (context) => SplashScreenPage(),
    '/home': (context) => HomePage(),
/*    '/login': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/billing': (context) => BillingPage(),
    '/content': (context) => ContentEdukasiPage(),
    '/jadwal_dokter': (context) => JadwalDokterPage(),
    '/more': (context) => MoreMenuPage(),
    '/profile': (context) => ChangePasswordPage(),
    '/register': (context) => RegisterPage(),*/
  },
));