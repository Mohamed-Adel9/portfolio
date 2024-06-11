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
  List<List<String>> technologies = [];

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
