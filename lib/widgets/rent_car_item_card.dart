import 'package:flutter/material.dart';

class RentCarItemCard extends StatelessWidget {
  final String name;
  final String brand;
  final double carPrice;

  const RentCarItemCard(this.name, this.brand, this.carPrice, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 400,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: <Widget>[
              Image.network(
                  'https://www.leaseguide.com/wp-content/uploads/2019/02/Genesis-G80.jpeg'),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Text(name),
                  Text(brand),
                  Text('R\$$carPrice/dia'),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.calendar_month),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
