import 'package:flutter/material.dart';
import 'package:portfolio/widgets/nav_bar_widget.dart';
import 'package:portfolio/widgets/screen_builder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            NavBarWidget(
              scrollController: scrollController,
            ),
            ScreenBuilder(
              scrollController: scrollController,
            ),
          ],
        ),
      ),
    );
  }
}
