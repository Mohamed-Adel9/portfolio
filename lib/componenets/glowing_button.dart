import 'package:flutter/material.dart';

class GlowingButton extends StatelessWidget {
  const GlowingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff5FBCFF),
            spreadRadius: 5,
            blurRadius: 20,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          elevation: 5,
        ),
        onPressed: () {},
        child: const Text('Resume'),
      ),
    );
  }
}