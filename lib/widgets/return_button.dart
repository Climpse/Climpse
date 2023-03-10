import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 7),
        ),
        Image(
          width: 20,
          height: 20,
          image: NetworkImage(
              "https://www.iconpacks.net/icons/2/free-arrow-left-icon-3099-thumb.png"),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
        ),
        Text("Voltar"),
      ],
    );
  }
}
