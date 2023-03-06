import 'package:climpse/pages/home/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aluguel de carros',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
