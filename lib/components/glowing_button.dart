import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GlowingButton extends StatelessWidget {
  const GlowingButton({super.key});

  //todo in future update to new cv link
  final String url =
      "https://drive.google.com/file/d/1IvLj9-VHjQbXarumwjmLUo8_UyGA2pUg/view?usp=drive_link";

  Future<void> _cvLauncher(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "couldn't launsh the url";
    }
  }

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
        onPressed: () {
          _cvLauncher(url);
        },
        child: const Text('Resume'),
      ),
    );
  }
}
