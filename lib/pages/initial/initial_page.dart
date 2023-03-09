import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        widthFactor: width,
        heightFactor: height,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 200.0),
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
              padding: const EdgeInsets.only(top: 90.0),
              width: 200,
              child: OutlinedButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: const Text('Login'),
              ),
            ),
            SizedBox(
              width: 200,
              child: OutlinedButton(
                style: TextButton.styleFrom(foregroundColor: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                },
                child: const Text('Cadastre-se'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
