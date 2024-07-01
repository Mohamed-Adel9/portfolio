import 'package:flutter/material.dart';
import 'package:portfolio/helper/font_helper.dart';

class contact_us extends StatelessWidget {
   contact_us({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController messageController,
    required this.isMobile ,
  }) : _formKey = formKey, _nameController = nameController, _emailController = emailController, _messageController = messageController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _messageController;
  bool isMobile ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: isMobile ? Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  height: 10,
                ),
                SizedBox(
                  width:
                  MediaQuery.of(context).size.width,
                  child: Text(
                    "Have a Project in Mind ? Looking For Someone To Work Together? contact me Through the form and I'll Response to you within 48 Hours",
                    textAlign: TextAlign.justify,
                    style: FontHelper.font1SemiBold(18,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 30,
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
            const SizedBox(height: 40,),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: Colors.white54,
            ),
            const SizedBox(height: 40,),
            Form(
              key: _formKey,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
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
                    Center(
                      child: Container(
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
                            // todo call validate here
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
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ) : Row(
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
    );
  }
}
