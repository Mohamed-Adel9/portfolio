import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalInfoComponent extends StatelessWidget {
  const PersonalInfoComponent({
    super.key,
     this.isMobile = false,
  });

  final bool isMobile ;

  Future<void> _linkLauncher(String url) async{
    if(await canLaunchUrl(Uri.parse(url))){
      await launchUrl(Uri.parse(url));
    }
    else{
      throw 'coudnt launsh the url';
    }
  }

  void _launchEmail({required String toEmail, String subject = '', String body = ''}) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: toEmail,
      queryParameters: {
        'subject': subject,
        'body': body,
      },
    );

    if (await canLaunchUrl(emailLaunchUri)) {
      await launchUrl(emailLaunchUri);
    } else {
      throw 'Could not launch $emailLaunchUri';
    }
  }


  final String gitHubUrl = 'https://github.com/Mohamed-Adel9';
  final String facebookUrl = 'https://www.facebook.com/vroonny?mibextid=ZbWKwL';
  final String instagramUrl = 'https://www.instagram.com/mohamedadel5533?igsh=NGVhN2U2NjQ0Yg==';
  final String linkedInUrl = 'https://www.linkedin.com/in/mohamed-adel-4baa19249';
  final String whatsappUrl = 'https://wa.me/+201116450688';

  //todo gmail
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ShaderMask(
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [Colors.purple, Colors.deepOrange, Colors.amber],
              stops: [0.0, .8, 1.0],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ).createShader(bounds);
          },
          child: Text(
            "Hello, I'M Mohamed Adel",
            style: TextStyle(
              fontSize: isMobile ?  30.0 : 36.0,
              color: Colors.white,
              fontFamily: FontHelper.font2,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(
          height: isMobile ? 30.0 : 50.0,
        ),
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Flutter Developer',
              textStyle: TextStyle(
                  shadows: const [
                    Shadow(
                        color: Color(0xff5FBCFF),
                        blurRadius: 30.0,
                        offset: Offset(2, 2)),
                  ],
                  fontSize: isMobile ? 25.0 : 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontHelper.font2,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              'Mobile  Developer',
              textStyle: TextStyle(
                  shadows: const [
                    Shadow(
                        color: Color(0xff5FBCFF),
                        blurRadius: 30.0,
                        offset: Offset(2, 2)),
                  ],
                  fontSize: isMobile ? 25.0 : 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontHelper.font2,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              'Software Engineer',
              textStyle: TextStyle(
                  shadows: const [
                    Shadow(
                        color: Color(0xff5FBCFF),
                        blurRadius: 30.0,
                        offset: Offset(2, 2)),
                  ],
                  fontSize: isMobile ? 25.0 : 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontHelper.font2,
                  color: Colors.white),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          repeatForever: true,
          isRepeatingAnimation: true,
          pause: const Duration(milliseconds: 500),
        ),
        SizedBox(
          height: isMobile ? 30.0 : 50.0,
        ),
        Text(
          "FROM EGYPT",
          style: FontHelper.font2Bold(isMobile ? 30.0 : 40.0, color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 450,
          height: 150,
          child: Text(
            textAlign: TextAlign.justify,
            "A skilled flutter developer with 3 years of experience, you can contact me at any time to start a work full of creativity and good performance",
            style: FontHelper.font1Regular(18, color: Colors.white),
          ),
        ),
        Row(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.deepOrange, Colors.amber],
                      stops: [0.0, .8, 1.0],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: TextButton(
                onPressed: () {
                  _launchEmail(toEmail: "eng.mohamed.adel49@gmail.com",body: "رسالتك",subject: "عنوان الرساله");
                },
                child: Text(
                  "GET IN TOUCH",
                  style: FontHelper.font1SemiBold(
                    isMobile ? 15.0 : 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: isMobile ? 15.0 : 25.0,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextButton(
                onPressed: () {
                  _linkLauncher(gitHubUrl);
                },
                style: TextButton.styleFrom(
                  shape: const StadiumBorder(
                    side: BorderSide(
                      color: Colors.white,
                      width: 2.5,
                    ),
                  ),
                ),
                child: Text(
                  "GitHub Profile",
                  style: FontHelper.font1SemiBold(
                    isMobile ? 15.0 : 18.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      colors: [Colors.blue, Colors.blueAccent],
                      stops: [0.0, 1.0],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: TextButton(
                onPressed: () {
                  _linkLauncher(facebookUrl);
                },
                child: Image.asset(
                  "assets/images/social/facebook.png",
                  color: Colors.white,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _linkLauncher(instagramUrl);
              },
              child: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(
                  "assets/images/social/instagram.png",
                 fit: BoxFit.cover,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _linkLauncher(linkedInUrl);
              },
              child: SizedBox(
                width: 40,
                height: 40,
                child: Image.asset(
                  "assets/images/social/linkedin.png",
                  fit: BoxFit.cover,

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
                width: 50,
                height: 50,

              ),
            ),
            TextButton(
              onPressed: () {
                _linkLauncher(whatsappUrl);
              },
              child: Image.asset(
                "assets/images/social/wahtsapp.png",
                fit: BoxFit.cover,
                width: 45,
                height: 45,

              ),
            ),


          ],
        ),
      ],
    );
  }
}
