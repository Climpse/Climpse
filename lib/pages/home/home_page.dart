import 'package:climpse/pages/personal_account/personal_account_page.dart';
import 'package:climpse/pages/rent/rent_car_page.dart';
import 'package:climpse/pages/trending/trending_page_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _telas = [
    const RentCarPage(),
    TrendingPage("Trending"),
    const PersonalAccountPage(),
  ];

  int _indiceAtual = 0;

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: "Alugar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: "trending",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Minha conta",
          ),
        ],
      ),
    );
  }
}
