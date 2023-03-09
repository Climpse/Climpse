import 'package:climpse/widgets/rent_car_item_card.dart';
import 'package:flutter/material.dart';

class RentCarPage extends StatelessWidget {
  final String texto;

  const RentCarPage(this.texto, {super.key});

  void non() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const <Widget>[
                RentCarItemCard(),
                RentCarItemCard(),
                RentCarItemCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
