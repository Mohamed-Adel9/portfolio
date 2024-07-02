import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';

class CertificatesWidget extends StatelessWidget {
   const CertificatesWidget({
    super.key,
    this.isMobile = false
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile ? Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("[ ",style: FontHelper.font2Bold(45,color: Colors.purple),),
              const Icon(Icons.school,size: 40,color:Colors.purple,),
              Text("  Education",style: FontHelper.font2Bold(35,color: Colors.white),),
              Text(" ]",style: FontHelper.font2Bold(45,color: Colors.purple),),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Computer Science",
                  style: FontHelper.font1SemiBold(30,color: Colors.white,
                  ),
                ),
                const SizedBox(width: 5,),
                Icon(Icons.computer,size: 30,color: Colors.purple.shade500,)
              ],
            ),
            Text(
              "Helwan-University",
              style: FontHelper.font1Regular(22,color: Colors.purple,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 40,
                ),
                Text("2020 - 2024",style: FontHelper.font1Regular(22,color: Colors.white,),)
              ],
            ),
          ],
        ),
        const SizedBox(height: 40,),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*.65,
                  child: Text(
                    textAlign:TextAlign.center,

                    "Flutter&Dart full Course",
                    style: FontHelper.font1SemiBold(30,color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 5,),
                const Icon(Icons.mobile_friendly,color: Colors.purple,size: 30,),
              ],
            ),
            Text(
              "ITI Institution",
              style: FontHelper.font1Regular(22,color: Colors.purple,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 5,),
                Text("jul.2023-Aug.2023",style: FontHelper.font1Regular(22,color: Colors.white,),)
              ],
            ),
          ],
        ),
        const SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("[ ",style: FontHelper.font2Bold(45,color: Colors.purple),),
              const Icon(Icons.newspaper_outlined,size: 40,color: Colors.purple,),
              Text("  Certificates",style: FontHelper.font2Bold(35,color: Colors.white),),
              Text(" ]",style: FontHelper.font2Bold(45,color: Colors.purple),),
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.70,
              child: Text(
                textAlign:TextAlign.center,
                "The Complete 2022 Flutter&Dart",
                style: FontHelper.font1SemiBold(30,color: Colors.white,
                ),
              ),
            ),
            Text(
              "Abdullah Mansour",
              style: FontHelper.font1Regular(22,color: Colors.purple,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(width: 5,),
                Text("jan.2023 - mar.2023",style: FontHelper.font1Regular(22,color: Colors.white,),)
              ],
            ),
          ],
        ),
        const SizedBox(height: 40,),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.70,
              child: Text(
                textAlign: TextAlign.center,
                "Flutter Advanced -MVVM in Arabic",
                style: FontHelper.font1SemiBold(30,color: Colors.white,
                ),
              ),
            ),
            Text(
              "Mina Farid",
              style: FontHelper.font1Regular(22,color: Colors.purple,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                const Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                  size: 40,
                ),
                Text("Aug.2023 - Oct.2023",style: FontHelper.font1Regular(22,color: Colors.white,),)
              ],
            ),
          ],
        ),
      ],
    ) : Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text("[ ",style: FontHelper.font2Bold(45,color: Colors.purple),),
                const Icon(Icons.school,size: 40,color: Colors.purple,),

                Text("  Education",style: FontHelper.font2Bold(35,color: Colors.white),),
                Text(" ]",style: FontHelper.font2Bold(45,color: Colors.purple),),
              ],
            ),
            Row(
              children: [
                Text("[ ",style: FontHelper.font2Bold(45,color: Colors.purple),),
                const Icon(Icons.newspaper_outlined,size: 40,color: Colors.purple,),

                Text("  Certificates",style: FontHelper.font2Bold(35,color: Colors.white),),
                Text(" ]",style: FontHelper.font2Bold(45,color: Colors.purple),),
              ],
            ),
          ],
        ),
        const SizedBox(height: 80,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(

              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Computer Science",
                          style: FontHelper.font1SemiBold(30,color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Icon(Icons.computer,size: 30,color: Colors.purple.shade500,)
                      ],
                    ),
                    Text(
                      "Helwan-University",
                      style: FontHelper.font1Regular(22,color: Colors.purple,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text("2020 - 2024",style: FontHelper.font1Regular(22,color: Colors.white,),)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 100,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Flutter&Dart full Course",
                          style: FontHelper.font1SemiBold(30,color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5,),
                        const Icon(Icons.mobile_friendly,color: Colors.purple,size: 30,),
                      ],
                    ),
                    Text(
                      "ITI Institution",
                      style: FontHelper.font1Regular(22,color: Colors.purple,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(width: 5,),
                        Text("jul.2023-Aug.2023",style: FontHelper.font1Regular(22,color: Colors.white,),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    width: 1,
                    height: 120,
                    color: Colors.white,
                  ),
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    width: 1,
                    height: 120,
                    color: Colors.white,
                  ),
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    width: 1,
                    height: 120,
                    color: Colors.white,
                  ),
                  const CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                  ),

                ],
              ) ,),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Text(
                        textAlign:TextAlign.center,
                        "The Complete 2022 Flutter&Dart",
                        style: FontHelper.font1SemiBold(30,color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Abdullah Mansour",
                      style: FontHelper.font1Regular(22,color: Colors.purple,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(width: 5,),
                        Text("jan.2023 - mar.2023",style: FontHelper.font1Regular(22,color: Colors.white,),)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 110,),
                Column(
                  children: [
                    SizedBox(
                      width: 400,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Flutter Advanced -MVVM in Arabic",
                        style: FontHelper.font1SemiBold(30,color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      "Mina Farid",
                      style: FontHelper.font1Regular(22,color: Colors.purple,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.white,
                          size: 40,
                        ),
                        Text("Aug.2023 - Oct.2023",style: FontHelper.font1Regular(22,color: Colors.white,),)
                      ],
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ],
    );
  }
}
