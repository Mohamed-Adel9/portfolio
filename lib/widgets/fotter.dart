
import 'package:flutter/material.dart';
import 'package:portfolio/componenets/my_text_button.dart';
import 'package:portfolio/helper/font_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class Fotter extends StatelessWidget {
  const Fotter({
    super.key,
    this.isMobile = false ,
    required this.scrollController ,
  });

  final bool isMobile ;
  final ScrollController scrollController ;

  void scrollPosition (double position){
    scrollController.animateTo(
        position,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut
    );
  }

  Future<void> _linkLauncher(String url) async{
    if(await canLaunchUrl(Uri.parse(url))){
      await launchUrl(Uri.parse(url));
    }
    else{
      throw 'coudnt launsh the url';
    }
  }

  final String gitHubUrl = 'https://github.com/Mohamed-Adel9';
  final String facebookUrl = 'https://www.facebook.com/vroonny?mibextid=ZbWKwL';
  final String linkedInUrl = 'https://www.linkedin.com/in/mohamed-adel-4baa19249';
  final String whatsappUrl = 'https://wa.me/+201116450688';

  @override
  Widget build(BuildContext context) {
    return isMobile ? Container(
      height : 400,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1B1B1B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyTextButtonTextWidget(
                text: "About",
                onPressed: () {
                  scrollPosition(500);
                },
              ),
              MyTextButtonTextWidget(
                text: "Services",
                onPressed: () {
                  scrollPosition(1500);

                },
              ),
              MyTextButtonTextWidget(
                text: "Projects",
                onPressed: () {
                  scrollPosition(2500);

                },
              ),
              MyTextButtonTextWidget(
                text: "ContactMe",
                onPressed: () {
                  scrollPosition(3000);

                },
              ),

            ],
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
                    stops: [0.0, .8, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                child: Text(
                  "Portfolio",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: FontHelper.font1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(" CopyRight c 2024 ",style: FontHelper.font1Regular(17,color: Colors.white),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Designed By : ",style: FontHelper.font1Regular(17,color: Colors.white),),
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
                      "Mohamed Adel",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                        fontFamily: FontHelper.font1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: TextButton(
                  onPressed: () {
                    _linkLauncher(facebookUrl);
                  },
                  child: Image.asset(
                    "assets/images/social/facebook.png",
                    fit: BoxFit.cover,
                    color: const Color(0xFF1B1B1B),

                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _linkLauncher(gitHubUrl);
                },
                child: Image.asset(
                  "assets/images/social/github.png",
                  fit: BoxFit.fill,
                  color: Colors.white,
                  width: 40,
                  height: 40,

                ),
              ),
            ],
          ),


        ],
      ),
    ) : Container(
      height : 150,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF1B1B1B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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

            ],
          ),
          Row(
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
                    stops: [0.0, .8, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                child: Text(
                  "Portfolio",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: FontHelper.font1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(" CopyRight c 2024 - All Rights received || Designed By : ",style: FontHelper.font1Regular(17,color: Colors.white),),
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
                  "Mohamed Adel",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white,
                    fontFamily: FontHelper.font1,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                child: TextButton(
                  onPressed: () {
                    _linkLauncher(facebookUrl);
                  },
                  child: Image.asset(
                    "assets/images/social/facebook.png",
                    fit: BoxFit.cover,
                    color: const Color(0xFF1B1B1B),

                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _linkLauncher(linkedInUrl);
                },
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    "assets/images/social/linkedin.png",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.medium,

                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  _linkLauncher(gitHubUrl);
                },
                child: Image.asset(
                  "assets/images/social/github.png",
                  fit: BoxFit.fill,
                  color: Colors.white,
                  width: 40,
                  height: 40,

                ),
              ),
              TextButton(
                onPressed: () {
                  _linkLauncher(whatsappUrl);
                },
                child: Image.asset(
                  "assets/images/social/wahtsapp.png",
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,

                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}