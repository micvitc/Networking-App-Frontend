import 'package:flutter/material.dart';
import 'package:networking_mic/ui/pages/gettingStarted/sign_in_page.dart';
import 'package:networking_mic/ui/pages/gettingStarted/sign_up_additional_page.dart';
import 'package:networking_mic/utils/textUtil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      txt("Let's Get Started!",
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
                            "Create an account on CirclePro to connect with your peers",
                            textAlign: TextAlign.center,
                            color: const Color(0xFF9BB1FF),
                            size: 12,
                            weight: FontWeight.w500),
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
                            hintText: "Full Name",
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
                      Container(
                        width: 300,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF36343B),
                            hintText: "VIT Email",
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
                      Container(
                        width: 300,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF36343B),
                            hintText: "Registration Number",
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
                      Container(
                        width: 300,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF36343B),
                            hintText: "Password",
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
                      Container(
                        width: 300,
                        child: const TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF36343B),
                            hintText: "Confirm Password",
                            hintStyle: TextStyle(color: Color(0xFF528ADE)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF528ADE)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SignUpAdditionalPage())),
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
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          txt("Already have an account? ",
                              color: Color(0xFF9BB1FF),
                              weight: FontWeight.w300,
                              size: 12),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()),
                              );
                            },
                            child: txt(
                              "Login here",
                              color: Color(0xFF5AC4FF),
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
            ],
          ),
        ));
  }
}
