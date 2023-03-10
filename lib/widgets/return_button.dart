import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  final String message;
  const ReturnButton(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 7),
          ),
          const Image(
            width: 20,
            height: 20,
            image: NetworkImage(
                "https://www.iconpacks.net/icons/2/free-arrow-left-icon-3099-thumb.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
          ),
          Text(message),
        ],
      ),
    );
  }
}
