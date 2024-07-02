import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';

class AboutMeText extends StatelessWidget {
  AboutMeText({
    super.key,
    this.isMobile = false,
  });

  final bool isMobile;

  final List<String> texts = [
    "I'm a skilled Flutter developer with a passion for creating innovative mobile apps.",
    "My expertise lies in designing user-friendly interfaces and writing efficient code.",
    "I stay updated on industry trends and excel at problem-solving, ensuring top-notch applications that impress users.",
    'Passionate about learning new technologies and exploring new ways to improve software development processes',
    "I'm dedicated to sculpting innovative, user-centric solutions that breathe life into every pixel.",
    '“Personality”',
    "I’m a social person who likes to work with a team and be collaborative.",
    "I like to deal with honesty and transparency in order to gain the people around me.",
    "I am passionate about my work and love creativity and constant learning,",
    "you can tell when you get to know me"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: texts.asMap().entries.map((entry) {
            String text = entry.value;
            bool isTitle = text == '“Personality”';
            return isTitle
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      text,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  );
          }).toList(),
        ),
        const SizedBox(
          height: 50,
        ),
        // experience

        isMobile
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .3, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "3+",
                          style: TextStyle(
                            fontSize: isMobile ? 30.0 : 36.0,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Years of Experience in Flutter",
                          style:
                              FontHelper.font2SemiBold(20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .3, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "8+",
                          style: TextStyle(
                            fontSize: isMobile ? 30.0 : 36.0,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Successfully Projects Complete",
                          style:
                              FontHelper.font2SemiBold(20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .3, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "4+",
                          style: TextStyle(
                            fontSize: isMobile ? 30.0 : 36.0,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Years of Experience in Software Development",
                          style:
                              FontHelper.font2SemiBold(20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .3, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "3+",
                          style: TextStyle(
                            fontSize: isMobile ? 30.0 : 36.0,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Years of Experience in Flutter",
                          style:
                              FontHelper.font2SemiBold(20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .3, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "8+",
                          style: TextStyle(
                            fontSize: isMobile ? 30.0 : 36.0,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Successfully Projects Complete",
                          style:
                              FontHelper.font2SemiBold(20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 80,
                    width: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .3, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "4+",
                          style: TextStyle(
                            fontSize: isMobile ? 30.0 : 36.0,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Text(
                          "Years of Experience in Software Development",
                          style:
                              FontHelper.font2SemiBold(20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ],
    );
  }
}
