import 'package:climpse/widgets/located_car_card.dart';
import 'package:flutter/material.dart';
import 'package:climpse/constants/images_url.dart' as images;

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Admin'),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(images.maleAvatar),
              ),
              accountEmail: null,
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Minha conta"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.app_registration),
              title: const Text("Cadastrar veículos"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text("Carros cadastrados"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Sair"),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 44, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Column(
        children: const [
          LocatedCarCard('userName', 'cpf', 'initialRentDate', 'finalRentDate',
              'licensePlate', 'brand'),
        ],
      ),
    );
  }
}
