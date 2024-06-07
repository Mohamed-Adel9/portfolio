import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_bar_widget.dart';
import 'package:portfolio/widgets/screen_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            NavBarWidget(),
            ScreenBuilder(),
          ],
        ),
      ),
    );
  }
}

