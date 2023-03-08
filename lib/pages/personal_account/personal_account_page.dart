import 'package:flutter/material.dart';

class PersonalAccountPage extends StatelessWidget {
  final String texto;

  PersonalAccountPage(this.texto);

  //TODO VERIFICAÇÃO DE SEXO PARA SETAR AVATAR RESPECTIVO

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: ListView(
            children: <Widget>[
              Container(
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/147/147144.png'),
              ),
              ListView(
                shrinkWrap: true,
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Nome'),
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('CPF'),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text('Email'),
                  ),
                  ListTile(
                    leading: Icon(Icons.password),
                    title: Text('Senha'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_outlined),
                    title: Text('Sexo'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text('Celular'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
