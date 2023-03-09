import 'package:climpse/pages/edit_account/edit_account_page.dart';
import 'package:climpse/pages/home/home_page.dart';
import 'package:climpse/pages/initial/initial_page.dart';
import 'package:climpse/pages/login/login_page.dart';
import 'package:climpse/pages/personal_account/personal_account_page.dart';
import 'package:climpse/pages/register/user/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aluguel de carros',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => InitialPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/register": (context) => RegisterPage(),
        "/user": (context) => const PersonalAccountPage(),
        "/edit/user": (context) => const EditAccountPage(),
      },
    );
  }
}
