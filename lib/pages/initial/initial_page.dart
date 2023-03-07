import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(50, 300, 0, 0),
            child: const Text(
              "CLIMPSE.",
              textAlign: TextAlign.center,
              textScaleFactor: 4.0,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w900,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            width: 200,
            child: OutlinedButton(
              child: const Text('Login'),
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, "/login");
              },
            ),
          ),
          Container(
            width: 200,
            child: OutlinedButton(
              child: const Text('Cadastre-se'),
              style: TextButton.styleFrom(foregroundColor: Colors.black),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
