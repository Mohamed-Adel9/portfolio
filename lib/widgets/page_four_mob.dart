import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class PageFourMob extends StatelessWidget {

  Future<void> _linkLauncher(String url) async{
    if(await canLaunchUrl(Uri.parse(url))){
      await launchUrl(Uri.parse(url));
    }
    else{
      throw 'coudnt launsh the url';
    }
  }




  final List<String> titles = [
    "ChatEase",
    "Hasanat",
    "My Gallery",
    "NewsCloud",
    "Quran App",
    "Digital wallet",
    "Tut app"
  ];


  final List<bool> isGooglePlay = [
    false,
    true,
    false,
    false,
    false,
    false,
    false
  ];

  final List<String> description = [
    "ChatEase is a cutting-edge instant messaging application designed with Flutter, leveraging Firebase as its robust backend. Tailored to provide a seamless and engaging communication experience, ChatEase facilitates real-time messaging between users with an intuitive and user-friendly interface.",
    "Hassanat is a thoughtfully designed mobile application, crafted using Flutter and available on Google Play. This all-encompassing app serves as a spiritual companion for Muslims, providing a variety of tools and resources to enhance their religious practices and knowledge. With Firebase as its backend, Hassanat ensures a secure, reliable, and seamless user experience.",
    "My Gallery is an advanced mobile application, crafted using Flutter, that serves as a comprehensive solution for managing your photos and videos. With a dedicated backend for optimal performance, My Gallery offers a rich set of features designed to enhance your media organization and viewing experience.",
    "NewsCloud is an innovative mobile application, designed with Flutter, that delivers the latest news from around the world straight to your fingertips. Utilizing the powerful News API, NewsCloud provides a seamless and personalized news reading experience",
    "Quran App is a meticulously crafted mobile application, built using Flutter, that offers a rich and immersive experience for reading, understanding, and reflecting on the Holy Quran. Unlike traditional backend services like Firebase, Quran App operates with a dedicated backend to ensure high performance and reliability.",
    "Digital Wallet is a cutting-edge mobile application, developed with Flutter, designed to streamline and secure the management of your cards digitally. Whether you need to store payment cards, loyalty cards, or membership cards, Digital Wallet provides a comprehensive and user-friendly platform to keep all your card information in one place",
    "TutApp is a demonstration mobile application developed using Flutter to illustrate the implementation of the Model-View-ViewModel (MVVM) design pattern. While it doesn't provide a specific service, TutApp serves as an educational tool for developers to understand and practice the MVVM architecture in mobile app development. ",
  ];
  List<String> images = [
    "assets/images/projects/chatEase.png",
    "assets/images/projects/hassanat.png",
    "assets/images/projects/gallery.png",
    "assets/images/projects/news.png",
    "assets/images/projects/quran.png",
    "assets/images/projects/wallet.png",
    "assets/images/projects/tut.png"
  ];
  List<String> links =[
    "https://github.com/Mohamed-Adel9/chat_ease",
    "https://github.com/Mohamed-Adel9/hassanat",
    "https://github.com/Mohamed-Adel9/gallery",
    "https://github.com/Mohamed-Adel9/news_app",
    "https://github.com/Mohamed-Adel9/Quran-app",
    "https://github.com/Mohamed-Adel9/Digital-wallet",
    "https://github.com/Mohamed-Adel9/Tut-App",
  ];


  final List<List<String>> technologies = [
    ["Flutter", "FireBase", "FireStore", "Messaging", "Dart", "Figma"],
    [
      "Flutter",
      "FireBase",
      "FireStore",
      "Messaging",
      "Dart",
      "Figma",
      "QuranAPI",
    ],
    ["Flutter", "Dart", "Figma", "BackEnd", "Notifications"],
    ["Flutter", "CloudAPI", "FireStore", "Messaging", "Dart", "Figma"],
    ["Flutter", "Messaging", "Dart", "Figma", "QuranAPI", "PrayerTimesAPI"],
    ["Flutter", "LocalDB", "Messaging", "Dart", "Figma"],
    ["Flutter", "MVVM", "Dart", "Figma", "Adobe XD"]
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 970.0,
          enlargeCenterPage: true,
          autoPlay: false,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 1,
        ),
        items: [1, 2, 3, 4, 5, 6, 7].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/background.png',
                            fit: BoxFit.cover,
                          ),

                          //foreground
                          Center(
                            child: Image.asset(
                              images[i - 1],
                              height: 400,
                              width: 400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    titles[i - 1],
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description[i - 1],
                    style: const TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const SizedBox(height: 16),
                  isGooglePlay[i - 1]
                      ? InkWell(
                          onTap: () {
                            _linkLauncher("https://play.google.com/store/apps/details?id=hasanat.app.com");
                          },
                          child: Image.asset(
                            "assets/images/google_play.png",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ))
                      : Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            onPressed: () {
                              _linkLauncher(links[i -1]);
                            },
                            child: Text(
                              "GitHub Link",
                              style: FontHelper.font2SemiBold(15,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Swap",
                        style: FontHelper.font1Bold(18, color: Colors.white),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
