import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/componenets/about_me_text.dart';
import 'package:portfolio/componenets/my_separator.dart';
import 'package:portfolio/componenets/personal_info_component.dart';
import 'package:portfolio/helper/font_helper.dart';
import 'package:portfolio/widgets/page_four_mob.dart';
import 'package:portfolio/widgets/page_four_web.dart';
import 'package:portfolio/widgets/landing_page.dart';
import 'package:portfolio/widgets/what_i_do.dart';

class ScreenBuilder extends StatelessWidget {
  ScreenBuilder({
    super.key,
  });
  final  _formKey = GlobalKey<FormState>();
  final  _nameController = TextEditingController();
  final  _emailController = TextEditingController();
  final  _messageController = TextEditingController();

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
                      const MySeparator(text: "My Projects"),

                      //page four
                      PageFourMob(),
                      // Container(
                      //   height: 800,
                      //   child: ListView.builder(
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) {
                      //       return Column(
                      //         crossAxisAlignment: CrossAxisAlignment.center,
                      //         children: [
                      //           Stack(
                      //             alignment: Alignment.center,
                      //             children: [
                      //               //background
                      //               Positioned.fill(child: Image.asset(
                      //                   "assets/images/background.png")),
                      //
                      //               //foreground
                      //               Image.asset(
                      //                 "assets/images/Logo.png",
                      //                 height: 250,
                      //                 width: 250,
                      //                 fit: BoxFit.cover,
                      //               )
                      //             ],
                      //           ),
                      //           Text(
                      //             "Title",
                      //             style: FontHelper.font1Bold(
                      //                 20, color: Colors.white),
                      //           ),
                      //           Text(
                      //             "Description",
                      //             maxLines: 5,
                      //             overflow: TextOverflow.ellipsis,
                      //             textAlign: TextAlign.start,
                      //             style: FontHelper.font1Regular(
                      //                 15, color: Colors.white),
                      //           ),
                      //         ],
                      //       );
                      //
                      //     }
                      //   ),
                      // ),
                    ],
                  ),
                ],
              ),
            );
          } else {
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
                      const MySeparator(text: "My Projects"),

                      //page four
                      PageFourWeb(),

                      //separator
                      const MySeparator(
                        text: "Contact Me",
                      ),

                      //contact me
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return const LinearGradient(
                                      colors: [
                                        Colors.purple,
                                        Colors.deepOrange,
                                        Colors.amber
                                      ],
                                      stops: [0.0, .8, 1.0],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ).createShader(bounds);
                                  },
                                  child: Text(
                                    "Get In Touch",
                                    style: TextStyle(
                                      fontSize: 36.0,
                                      color: Colors.white,
                                      fontFamily: FontHelper.font2,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .35,
                                  child: Text(
                                    "Have a Project in Mind ? Looking For Someone To Work Together? contact me Through the form and I'll Response to you within 48 Hours",
                                    textAlign: TextAlign.justify,
                                    style: FontHelper.font1SemiBold(18,
                                        color: Colors.white),
                                  ),
                                ),
                                const SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.mail,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // todo nav to gmail
                                      },
                                      child: Text(
                                        "eng.mohamed.adel49@gmail.com",
                                        style: FontHelper.font1SemiBold(
                                          14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        // todo nav to whatsapp
                                      },
                                      child: Text(
                                        "+201116450688",
                                        style: FontHelper.font1SemiBold(
                                          14,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Form(
                              key: _formKey,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width*.35,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Your Name",
                                      style: FontHelper.font2SemiBold(
                                        13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    TextFormField(
                                      controller: _nameController,
                                      textAlign: TextAlign.start,
                                      style: FontHelper.font2SemiBold(13),
                                      cursorColor: Colors.white,

                                      decoration: const InputDecoration(
                                        hintText: 'Enter your name',
                                        filled: true,
                                        fillColor: Color(0xFF1B1B1B), // Dark background color
                                        hintStyle: TextStyle(color: Colors.white60), // Hint text color
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
                                          borderSide: BorderSide.none, // No border
                                        ),

                                      ),
                                      validator: (value){
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;                                      },

                                    ),
                                    const SizedBox(height: 30,),
                                    Text(
                                      "Your E-mail",
                                      style: FontHelper.font2SemiBold(
                                        13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    TextFormField(
                                      controller: _emailController,
                                      textAlign: TextAlign.start,
                                      style: FontHelper.font2SemiBold(13),
                                      cursorColor: Colors.white,
                                      decoration: const InputDecoration(
                                        hintText: 'Enter your email',
                                        filled: true,
                                        fillColor: Color(0xFF1B1B1B), // Dark background color
                                        hintStyle: TextStyle(color: Colors.white60), // Hint text color
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
                                          borderSide: BorderSide.none, // No border
                                        ),

                                      ),
                                      validator: (value){
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        return null;                                      },

                                    ),
                                    const SizedBox(height: 30,),
                                    Text(
                                      "Tell Me a bit More What You Are Looking for ?",
                                      style: FontHelper.font2SemiBold(
                                        13,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    TextFormField(
                                      controller: _messageController,
                                      textAlign: TextAlign.start,
                                      style: FontHelper.font2SemiBold(13),
                                      cursorColor: Colors.white,
                                      decoration: const InputDecoration(
                                        hintText: '',
                                        contentPadding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
                                        filled: true,
                                        fillColor: Color(0xFF1B1B1B), // Dark background color
                                        hintStyle: TextStyle(color: Colors.white60), // Hint text color
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
                                          borderSide: BorderSide.none, // No border
                                        ),

                                      ),
                                      validator: (value){
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        }
                                        return null;                                      },

                                    ),
                                    const SizedBox(height: 50,),
                                    Container(
                                      height: 50,
                                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          gradient: const LinearGradient(
                                              colors: [Colors.purple, Colors.deepOrange, Colors.amber],
                                              stops: [0.0, .8, 1.0],
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight)),
                                      child: TextButton(
                                        onPressed: () {
                                          // todo go to gmail to contact me
                                        },
                                        child: Text(
                                          "Confirm",

                                          style: FontHelper.font1SemiBold(
                                            18.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
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
