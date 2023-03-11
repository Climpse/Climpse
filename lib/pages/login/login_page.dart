import 'package:climpse/hooks/use_user.hook.dart';
import 'package:climpse/widgets/return_button.dart';
import 'package:flutter/material.dart';
import 'package:climpse/globals/global_variables.dart' as globals;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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
                final userId = await login(cpf: cpfController.text);
                globals.userId = userId;
                Navigator.pushNamed(context, "/home");
              },
              child: const Text("Logar"),
            ),
          ],
        ),
      ),
    );
  }
}
