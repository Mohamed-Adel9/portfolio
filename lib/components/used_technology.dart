import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String text;

  const CustomContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        border: const Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
          left: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
          right: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
          top: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class UsedTechnology extends StatelessWidget {
  const UsedTechnology({
    super.key,
    required this.buttonLabels,
  });

  final List<String> buttonLabels;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttonLabels
          .map((label) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomContainer(text: label),
              ))
          .toList(),
    );
  }
}
