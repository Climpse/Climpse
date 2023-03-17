import 'package:flutter/material.dart';

class LocatedCarCard extends StatelessWidget {
  final String userName;
  final String cpf;
  final String initialRentDate;
  final String finalRentDate;
  final String licensePlate;
  final String brand;

  const LocatedCarCard(this.userName, this.cpf, this.initialRentDate,
      this.finalRentDate, this.licensePlate, this.brand,
      {super.key});

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
                      leading: const Icon(Icons.person),
                      title: Text('$userName           $cpf'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.car_rental),
                      title: Text('$brand    $licensePlate'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.calendar_month),
                      title: Text('$initialRentDate / $finalRentDate'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
