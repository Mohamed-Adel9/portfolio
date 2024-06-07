import 'package:flutter/material.dart';
import 'package:portfolio/componenets/about_me_text.dart';
import 'package:portfolio/componenets/my_separator.dart';
import 'package:portfolio/componenets/personal_info_component.dart';
import 'package:portfolio/componenets/vertical_number_selector.dart';
import 'package:portfolio/widgets/landing_page.dart';
import 'package:portfolio/widgets/what_i_do.dart';

class ScreenBuilder extends StatelessWidget {
  const ScreenBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Stack(
                children: [
                  // BackGround Images
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/BG.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Foreground Content
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //page one
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 400,
                              height: 400,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage('assets/images/me.jpg'),
                                    fit: BoxFit.cover,
                                    alignment: Alignment.bottomCenter),
                              ),
                              child: const CircleAvatar(
                                radius: 300, // Adjust as needed
                                backgroundColor: Colors
                                    .transparent,
                              ),
                            ),
                            const SizedBox(height: 20.0,),
                            const PersonalInfoComponent(isMobile: true,),

                          ],
                        ),
                      ),

                      //separator
                      const MySeparator(text: "About Me"),

                      //page two
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: AboutMeText(isMobile: true,),
                      ),

                      //separator
                      const MySeparator(text: "What I Do",),

                      //page three
                      const WhatIDoPage(isMobile: true,),
                    ],
                  ),
                ],
              ),
            );
          }
          else {
            return SingleChildScrollView(
              child: Stack(
                children: [
                  // BackGround Images
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/BG.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Foreground Content
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // page one
                      const LandingPage(),

                      //separator
                      const MySeparator(text: "About Me",),

                      //page two
                      AboutMeText(isMobile: false,),

                      //separator
                      const MySeparator(text: "What I Do",),

                      //page three
                      const WhatIDoPage(),

                      //separator
                      const MySeparator(text: "My Projects"),

                      //page four
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          NumberHighlightScreen(),
                        ],
                      ),



                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}







