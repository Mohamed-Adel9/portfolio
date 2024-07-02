import 'package:flutter/material.dart';
import 'package:portfolio/components/personal_info_component.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const PersonalInfoComponent(
            isMobile: false,
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            width: 500,
            height: 500,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/images/me.jpg'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter),
            ),
            child: const CircleAvatar(
              radius: 400, // Adjust as needed
              backgroundColor:
                  Colors.transparent, // Make the background transparent

            ),
          ),
        ],
      ),
    );
  }
}
