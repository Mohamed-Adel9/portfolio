import 'package:flutter/material.dart';
import 'package:portfolio/componenets/used_technology.dart';
import 'package:portfolio/helper/font_helper.dart';

class NumberHighlightScreen extends StatefulWidget {
  @override
  _NumberHighlightScreenState createState() => _NumberHighlightScreenState();
}

class _NumberHighlightScreenState extends State<NumberHighlightScreen> {
  List<int> numbers = [1, 2, 3, 4, 5, 6,7];
  int? selectedNumber = 1;
  bool isGooglePlay = true;

  //description details
  List<String> titles = ["ChatEase","Hasanat","My Gallery","NewsCloud","Quran App","Digital wallet","Tut app"];
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
    ["Flutter","FireBase","FireStore","Messaging","Dart","Figma"],
    ["Flutter","FireBase","FireStore","Messaging","Dart","Figma","QuranAPI","PrayerTimesAPI"],
    ["Flutter","Dart","Figma","BackEnd","Notifications"],
    ["Flutter","CloudAPI","FireStore","Messaging","Dart","Figma"],
    ["Flutter","Messaging","Dart","Figma","QuranAPI","PrayerTimesAPI"],
    ["Flutter","LocalDB","Messaging","Dart","Figma"],
    ["Flutter","MVVM","Dart","Figma","Adobe XD"]
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
                  //back ground for the selected
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
                        color:
                            isSelected ? Colors.white : Colors.purple.shade200,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Project name",
              style: FontHelper.font2SemiBold(
                40,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const UsedTechnology(
              buttonLabels: ["Flutter", "Dart", "Firebase", "Figma"],
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
            Text("description",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: FontHelper.font1,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 15,
            ),
            isGooglePlay
                ? InkWell(
                    onTap: () {
                      //todo nav to google play
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
                        // todo nav to github project link
                      },
                      child: Text(
                        "GitHub Link",
                        style:
                            FontHelper.font2SemiBold(15, color: Colors.white),
                      ),
                    ),
                  ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Stack(
            children: [
              //backGround
              Positioned.fill(
                  child: Image.asset("assets/images/background.png")),

              //foreground
              Image.asset(
                "assets/images/Logo.png",
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
