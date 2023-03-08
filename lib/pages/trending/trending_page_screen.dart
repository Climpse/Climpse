import 'package:climpse/widgets/item_card.dart';
import 'package:flutter/material.dart';

class TrendingPage extends StatelessWidget {
  final String texto;

  TrendingPage(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView(
            children: <Widget>[
              ItemCard('trending'),
            ],
          ),
        ),
      ],
    ));
  }
}
