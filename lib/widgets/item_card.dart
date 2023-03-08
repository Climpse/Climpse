import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String texto;

  ItemCard(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            shrinkWrap: true, // <---- Here
            children: const <Widget>[],
          ),
        ],
      ),
    );
  }
}
