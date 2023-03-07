import 'package:flutter/material.dart';

class RegisterVehiclePage extends StatefulWidget {
  @override
  _RegisterVehiclePageState createState() => _RegisterVehiclePageState();
}

class _RegisterVehiclePageState extends State<RegisterVehiclePage> {
  TextEditingController licensePlaseController = TextEditingController();
  TextEditingController brandController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController totalTraveledDistanceController =
      TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        child: Text("Voltar"))),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: licensePlaseController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a placa do carro:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: brandController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a marca do carro:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o nome do carro:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: colorController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a cor do carro:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: totalTraveledDistanceController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite a quilometragem do veículo:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: yearController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o ano de lançamento:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: typeController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o tipo do veículo:',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: priceController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o preço da diária:',
                ),
              ),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    // return cpfController.text
                    Navigator.pushNamed(context, "/home");
                  },
                  child: Text("Criar Conta")),
            ),
          ],
        ),
      ),
    );
  }
}
