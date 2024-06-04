import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';

class AboutMeText extends StatelessWidget {
  const AboutMeText({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "I'm a skilled Flutter developer with a passion for creating innovative mobile apps.",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "My expertise lies in designing user-friendly interfaces and writing efficient code.",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "I stay updated on industry trends and excel at problem-solving, ensuring top-notch applications that impress users.",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            'Passionate about learning new technologies and exploring new ways to improve software development processes',
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "I'm dedicated to sculpting innovative, user-centric solutions that breathe life into every pixel.",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 40),
          Text(
            '“Personality”',
            style: FontHelper.font1Bold(25,color: Colors.white),
          ),
          const SizedBox(height: 20),
          Text(
            "I’m a social person who likes to work with a team and be collaborative.",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "I like to deal with honesty and transparency in order to gain the people around me.",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "I am passionate about my work and love creativity and constant learning,",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "you can tell when you get to know me",
            style: FontHelper.font1Light(19,color: Colors.white),
          ),
        ],
      ),
    );
  }
}
