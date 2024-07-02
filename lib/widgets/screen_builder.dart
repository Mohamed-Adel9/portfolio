import 'package:flutter/material.dart';
import 'package:portfolio/components/about_me_text.dart';
import 'package:portfolio/components/my_separator.dart';
import 'package:portfolio/components/personal_info_component.dart';
import 'package:portfolio/widgets/certificates_widget.dart';
import 'package:portfolio/widgets/contact_us.dart';
import 'package:portfolio/widgets/fotter.dart';
import 'package:portfolio/widgets/page_four_mob.dart';
import 'package:portfolio/widgets/page_four_web.dart';
import 'package:portfolio/widgets/landing_page.dart';
import 'package:portfolio/widgets/what_i_do.dart';

class ScreenBuilder extends StatelessWidget {
  ScreenBuilder({
    super.key,
    required this.scrollController
  });
  final  _formKey = GlobalKey<FormState>();
  final  _nameController = TextEditingController();
  final  _emailController = TextEditingController();
  final  _messageController = TextEditingController();

  ScrollController scrollController ;
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
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const PersonalInfoComponent(
                              isMobile: true,
                            ),
                          ],
                        ),
                      ),

                      //separator
                      const MySeparator(text: "About Me"),

                      //page two
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: AboutMeText(
                          isMobile: true,
                        ),
                      ),

                      //separator
                      const MySeparator(
                        text: "What I Do",
                      ),

                      //page three
                      const WhatIDoPage(
                        isMobile: true,
                      ),


                      //separator
                      const MySeparator(
                        text: "Education ",
                      ),

                      //study and certificates
                      const CertificatesWidget(isMobile : true),
                      //separator
                      const MySeparator(text: "My Projects"),

                      //page four
                      PageFourMob(),

                      //separator
                      const MySeparator(text: "Contact Me"),

                      // contact me
                      ContactUs(
                        isMobile: true,
                        formKey: _formKey,
                        nameController: _nameController,
                        emailController: _emailController,
                        messageController: _messageController,
                      ),

                      Fotter(isMobile: true,scrollController: scrollController,),


                    ],
                  ),
                ],
              ),
            );
          }
          else if (constraints.maxWidth > 600 && constraints.maxWidth < 1200 ) {
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
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                                backgroundColor: Colors.transparent,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            const PersonalInfoComponent(
                              isMobile: true,
                            ),
                          ],
                        ),
                      ),

                      //separator
                      const MySeparator(text: "About Me"),

                      //page two
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: AboutMeText(
                          isMobile: true,
                        ),
                      ),

                      //separator
                      const MySeparator(
                        text: "What I Do",
                      ),

                      //page three
                      const WhatIDoPage(
                        isMobile: true,
                      ),


                      //separator
                      const MySeparator(
                        text: "Education ",
                      ),

                      //study and certificates
                      const CertificatesWidget(isMobile : true),
                      //separator
                      const MySeparator(text: "My Projects"),

                      //page four
                      PageFourMob(),

                      //separator
                      const MySeparator(text: "Contact Me"),

                      // contact me
                      ContactUs(
                        isMobile: true,
                        formKey: _formKey,
                        nameController: _nameController,
                        emailController: _emailController,
                        messageController: _messageController,
                      ),

                      Fotter(isMobile: true,scrollController: scrollController,),


                    ],
                  ),
                ],
              ),
            );
          }
          else {
            return SingleChildScrollView(
              controller: scrollController,
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
                      const MySeparator(
                        text: "About Me",
                      ),

                      //page two
                      AboutMeText(
                        isMobile: false,
                      ),

                      //separator
                      const MySeparator(
                        text: "What I Do",
                      ),

                      //page three
                      const WhatIDoPage(),

                      //separator
                      const MySeparator(
                        text: "Education & Certificates",
                      ),

                      //study and certificates
                      const CertificatesWidget(),

                      //separator
                      const MySeparator(text: "My Projects"),

                      //page four
                      PageFourWeb(),

                      //separator
                      const MySeparator(
                        text: "Contact Me",
                      ),

                      //contact me
                      ContactUs(
                        isMobile:false,
                        formKey: _formKey,
                        nameController: _nameController,
                        emailController: _emailController,
                        messageController: _messageController,
                      ),

                      //fotter
                      Fotter(isMobile: false,scrollController: scrollController,),

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



