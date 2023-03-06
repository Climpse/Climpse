import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
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
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
            child: Text('Login'),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  side: BorderSide(width: 3, color: Colors.black),
                ),
              ),
            ),
            child: Text('Cadastr-se'),
          ),
        ],
      ),
    );
  }
}
