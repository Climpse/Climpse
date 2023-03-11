import 'package:climpse/hooks/use_vehicle.hook.dart';
import 'package:climpse/widgets/item_card.dart';
import 'package:flutter/material.dart';

class TrendingPage extends StatefulWidget {
  final String texto;

  const TrendingPage(this.texto, {super.key});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
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
                    itemBuilder: (context, index) => ItemCard(
                        vehicles[index]['nome'],
                        vehicles[index]['ano'],
                        vehicles[index]['valorDiaria']),
                  ),
                ),
              ],
            ),
          );
        }
        return const Text('Carregando Carros');
      },
    );
  }
}
