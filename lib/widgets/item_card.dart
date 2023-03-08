import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String texto;

  ItemCard(this.texto);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 100,
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
                    children: const <Widget>[
                      ListTile(
                        leading: Icon(Icons.car_repair_outlined),
                        title: Text('Nome carro' + ' ano carro'),
                      ),
                      ListTile(
                        leading: Icon(Icons.money_sharp),
                        title: Text('R\$15,00/dia'),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
