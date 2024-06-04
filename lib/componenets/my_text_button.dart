import 'package:flutter/material.dart';

class MyTextButtonTextWidget extends StatelessWidget {

  MyTextButtonTextWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });

  String text ;
  void Function() onPressed ;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed ,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ));
  }
}