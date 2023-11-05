import 'package:flutter/material.dart';
import 'package:networking_mic/ui/pages/gettingStarted/sign_in_page.dart';
import 'package:networking_mic/utils/textUtil.dart';

class SignUpAdditionalPage extends StatelessWidget {
  const SignUpAdditionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF0C141E),
          centerTitle: true,
          title: txt("Sign Up",
              color: Colors.white, weight: FontWeight.w500, size: 26),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  txt("Additional Details",
                      textAlign: TextAlign.center,
                      color: const Color(0xFF9BB1FF),
                      size: 24,
                      weight: FontWeight.w500),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 280,
                    child: txt(
                        "Add a few details about yourself to help people know you better :)",
                        textAlign: TextAlign.center,
                        color: const Color(0xFF9BB1FF),
                        size: 12,
                        weight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/icons/profile.png")),
                          borderRadius: BorderRadius.circular(140),
                          // color: Colors.amber,
                        ),
                      ),
                      Positioned(
                        bottom: -1,
                        left: 40,
                        right: 40,
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF4F378B),
                          ),
                          child: Center(
                            child: txt(
                              "edit",
                              size: 12,
                              color: const Color(0xFF9BB1FF),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 300,
                    child: const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF36343B),
                        hintText: "About",
                        hintStyle: TextStyle(color: Color(0xFF528ADE)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF528ADE)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF36343B),
                        hintText: "Location",
                        hintStyle: TextStyle(color: Color(0xFF528ADE)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF528ADE)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFF36343B),
                        hintText: "Education Status",
                        hintStyle: TextStyle(color: Color(0xFF528ADE)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF528ADE)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpAdditionalPage())),
                    child: Container(
                      width: 137,
                      height: 49,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFF528ADE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0xFF528ADE),
                            blurRadius: 15,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 10),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Create',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.60,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    height: 1.37,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      txt("Already have an account? ",
                          color: const Color(0xFF9BB1FF),
                          weight: FontWeight.w300,
                          size: 12),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInPage()),
                          );
                        },
                        child: txt(
                          "Login here",
                          color: const Color(0xFF5AC4FF),
                          weight: FontWeight.w500,
                          size: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
