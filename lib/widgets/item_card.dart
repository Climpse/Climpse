import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String carName;
  final int carYear;
  final double carPrice;

  const ItemCard(this.carName, this.carYear, this.carPrice, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView(
            children: <Widget>[
              Container(
                height: 250,
                margin: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 8.0, color: Colors.green),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.car_repair_outlined),
                      title: Text('$carName   $carYear'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.money_sharp),
                      title: Text('R\$$carPrice/dia'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
