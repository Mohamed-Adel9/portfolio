import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';

class ProgrammingLangCart extends StatelessWidget {
  const ProgrammingLangCart(
      {super.key, required this.text, required this.image});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 150,
      color: Colors.grey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            image,
            width: 80,
            height: 80,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: FontHelper.font1SemiBold(
              18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
