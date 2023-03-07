import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Text("Home Page"),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  child: Text("Voltar")),
            ),
          ],
        ),
      ),
    );
  }
}
