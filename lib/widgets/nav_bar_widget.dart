import 'package:flutter/material.dart';
import 'package:portfolio/componenets/glowing_button.dart';
import 'package:portfolio/componenets/my_text_button.dart';
import 'package:portfolio/helper/font_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarWidget extends StatelessWidget {
   const NavBarWidget({
    super.key,
    required this.scrollController
  });


  final  ScrollController scrollController ;
   void scrollPosition (double position){
     scrollController.animateTo(
         position,
         duration: const Duration(seconds: 1),
         curve: Curves.easeInOut
     );
   }



   @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //for mobile devices
        if (constraints.maxWidth < 600) {
          return Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      scrollPosition(0);
                    },
                      child: Image.asset("assets/images/Logo.png",fit: BoxFit.cover,height: 60,width: 130,)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MyTextButtonTextWidget(text: "About", onPressed: () {
                        scrollPosition(500);
                      }),
                      MyTextButtonTextWidget(text: "Services", onPressed: () {
                        scrollPosition(1000);

                      }),
                      MyTextButtonTextWidget(text: "Projects", onPressed: () {
                        scrollPosition(2000);

                      }),
                      MyTextButtonTextWidget(
                          text: "ContactMe", onPressed: () {
                        scrollPosition(2500);

                      }),
                      const SizedBox(
                        width: 30.0,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                        child: GlowingButton(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        //for web and tablets
        else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    scrollPosition(0);
                  },
                  child: Row(
                    children: [
                      Image.asset("assets/images/Logo.png",fit: BoxFit.cover,height: 60,width: 100,),
                      Text("Mohamed Adel",style: FontHelper.font1Regular(18,color: Colors.white),)
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyTextButtonTextWidget(
                      text: "About",
                      onPressed: () {
                        scrollPosition(710);
                      },
                    ),
                    MyTextButtonTextWidget(
                      text: "Services",
                      onPressed: () {
                        scrollPosition(1400);

                      },
                    ),
                    MyTextButtonTextWidget(
                      text: "Projects",
                      onPressed: () {
                        scrollPosition(3030);

                      },
                    ),
                    MyTextButtonTextWidget(
                      text: "ContactMe",
                      onPressed: () {
                        scrollPosition(3600);

                      },
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    const GlowingButton(),
                  ],
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
