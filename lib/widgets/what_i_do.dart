import 'package:flutter/material.dart';
import 'package:portfolio/componenets/programming_lang_cart.dart';
import 'package:portfolio/helper/font_helper.dart';

class WhatIDoPage extends StatelessWidget {
  const WhatIDoPage({super.key, this.isMobile = false});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/flutter.png',
                      text: "Flutter",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/dart.png',
                      text: "Dart",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/python.png',
                      text: "Python",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/c.png',
                      text: "C-Language",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/figma.png',
                      text: "Figma",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/github.png',
                      text: "GitHub",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/database.png',
                      text: "Database",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/photoshop.png',
                      text: "Photoshop",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                InkWell(
                  onTap: () {
                    //todo nav to contact us or whatsapp
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            stops: [0.0, .6, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "LET'S WORK TOGETHER",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 350,
                        height: 3,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber,
                            ],
                            stops: [0.0, .5, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/flutter.png',
                      text: "Flutter",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/dart.png',
                      text: "Dart",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/python.png',
                      text: "Python",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/c.png',
                      text: "C-Language",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/figma.png',
                      text: "Figma",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/github.png',
                      text: "GitHub",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/database.png',
                      text: "Database",
                    ),
                    ProgrammingLangCart(
                      image: 'assets/images/whatIDo/photoshop.png',
                      text: "Photoshop",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    //todo nav to contact us or whatsapp
                  },
                  child: Column(
                    children: [
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber
                            ],
                            stops: [0.0, .6, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          "LET'S WORK TOGETHER",
                          style: TextStyle(
                            fontSize: 45,
                            color: Colors.white,
                            fontFamily: FontHelper.font2,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 650,
                        height: 3,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.purple,
                              Colors.deepOrange,
                              Colors.amber,
                            ],
                            stops: [0.0, .5, 1.0],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
