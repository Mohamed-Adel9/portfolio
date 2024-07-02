import 'package:flutter/material.dart';
import 'package:portfolio/components/used_technology.dart';
import 'package:portfolio/helper/font_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class PageFourWeb extends StatefulWidget {
  @override
  _PageFourWebState createState() => _PageFourWebState();
}

class _PageFourWebState extends State<PageFourWeb> {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7];
  int? selectedNumber = 1;

  Future<void> _linkLauncher(String url) async{
    if(await canLaunchUrl(Uri.parse(url))){
      await launchUrl(Uri.parse(url));
    }
    else{
      throw 'coudnt launsh the url';
    }
  }


  //description details
  List<String> titles = [
    "ChatEase",
    "Hasanat",
    "My Gallery",
    "NewsCloud",
    "Quran App",
    "Digital wallet",
    "Tut app"
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
  List<bool> isGooglePlay = [false,true,false,false,false,false,false];
  List<String> description = [
    "ChatEase is a cutting-edge instant messaging application designed with Flutter, leveraging Firebase as its robust backend. Tailored to provide a seamless and engaging communication experience, ChatEase facilitates real-time messaging between users with an intuitive and user-friendly interface.",
    "Hassanat is a thoughtfully designed mobile application, crafted using Flutter and available on Google Play. This all-encompassing app serves as a spiritual companion for Muslims, providing a variety of tools and resources to enhance their religious practices and knowledge. With Firebase as its backend, Hassanat ensures a secure, reliable, and seamless user experience.",
    "My Gallery is an advanced mobile application, crafted using Flutter, that serves as a comprehensive solution for managing your photos and videos. With a dedicated backend for optimal performance, My Gallery offers a rich set of features designed to enhance your media organization and viewing experience.",
    "NewsCloud is an innovative mobile application, designed with Flutter, that delivers the latest news from around the world straight to your fingertips. Utilizing the powerful News API, NewsCloud provides a seamless and personalized news reading experience",
    "Quran App is a meticulously crafted mobile application, built using Flutter, that offers a rich and immersive experience for reading, understanding, and reflecting on the Holy Quran. Unlike traditional backend services like Firebase, Quran App operates with a dedicated backend to ensure high performance and reliability.",
    "Digital Wallet is a cutting-edge mobile application, developed with Flutter, designed to streamline and secure the management of your cards digitally. Whether you need to store payment cards, loyalty cards, or membership cards, Digital Wallet provides a comprehensive and user-friendly platform to keep all your card information in one place",
    "TutApp is a demonstration mobile application developed using Flutter to illustrate the implementation of the Model-View-ViewModel (MVVM) design pattern. While it doesn't provide a specific service, TutApp serves as an educational tool for developers to understand and practice the MVVM architecture in mobile app development. ",
  ];
  List<List<String>> technologies = [
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
  List<String> links =[
    "https://github.com/Mohamed-Adel9/chat_ease",
    "https://github.com/Mohamed-Adel9/hassanat",
    "https://github.com/Mohamed-Adel9/gallery",
    "https://github.com/Mohamed-Adel9/news_app",
    "https://github.com/Mohamed-Adel9/Quran-app",
    "https://github.com/Mohamed-Adel9/Digital-wallet",
    "https://github.com/Mohamed-Adel9/Tut-App",
  ];

  void selectNumber(int number) {
    setState(() {
      selectedNumber = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: numbers.map((number) {
            bool isSelected = selectedNumber == number;
            return GestureDetector(
              onTap: () => selectNumber(number),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  //background for the selected
                  isSelected
                      ? Image.asset(
                    "assets/images/Ellipse.png",
                    fit: BoxFit.cover,
                  )
                      : Container(),

                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                        fontSize: 32.0,
                        color: isSelected ? Colors.white : Colors.purple.shade200,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                selectedNumber != null ? titles[selectedNumber! - 1] : "",
                style: FontHelper.font2SemiBold(
                  40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              UsedTechnology(
                buttonLabels: selectedNumber != null ? technologies[selectedNumber! - 1] : [],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Application Description :",
                style: FontHelper.font1Regular(
                  15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                selectedNumber != null ? description[selectedNumber! - 1] : "",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: FontHelper.font1,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              isGooglePlay[selectedNumber! - 1]
                  ? InkWell(
                  onTap: () {
                    _linkLauncher("https://play.google.com/store/apps/details?id=hasanat.app.com");
                  },
                  child: Image.asset("assets/images/google_play.png"))
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
                    _linkLauncher(links[selectedNumber! -1]);
                  },
                  child: Text(
                    "GitHub Link",
                    style: FontHelper.font2SemiBold(15, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Stack(
            children: [
              //background
              Positioned.fill(child: Image.asset("assets/images/background.png")),

              //foreground
              Image.asset(
                images[selectedNumber! - 1],
                height: 500,
                width: 500,
              )
            ],
          ),
        ),
      ],
    );
  }
}
