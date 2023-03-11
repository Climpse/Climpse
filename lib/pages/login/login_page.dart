import 'package:climpse/hooks/use_user.hook.dart';
import 'package:climpse/pages/home/home_page.dart';
import 'package:climpse/widgets/return_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const ReturnButton('Voltar'),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: cpfController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CPF',
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                login(context: context, cpf: cpfController.text);
              },
              child: const Text("Logar"),
            ),
          ],
        ),
      ),
    );
  }
}
