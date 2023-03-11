import 'package:climpse/hooks/use_vehicle.hook.dart';
import 'package:climpse/widgets/rent_car_item_card.dart';
import 'package:flutter/material.dart';

class RentCarPage extends StatefulWidget {
  const RentCarPage({super.key});

  @override
  State<RentCarPage> createState() => _RentCarPageState();
}

class _RentCarPageState extends State<RentCarPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getAllAvailableVehicles(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          List<dynamic> vehicles = snapshot.data!;
          return Scaffold(
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: vehicles.length,
                      itemBuilder: (context, index) => RentCarItemCard(
                          vehicles[index]['nome'],
                          vehicles[index]['marca'],
                          vehicles[index]['valorDiaria'])),
                ),
              ],
            ),
          );
        }
        return const Text('Carregando carros');
      },
    );
  }
}
