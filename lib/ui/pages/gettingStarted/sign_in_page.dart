import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:networking_mic/ui/pages/gettingStarted/sign_up_page.dart';
import 'package:networking_mic/utils/appSizeUtil.dart';
import 'package:networking_mic/utils/textUtil.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF0C141E),
          centerTitle: true,
          title: txt("Sign In",
              color: Colors.white, weight: FontWeight.w500, size: 26),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Image.asset(
                    "assets/images/signin.png",
                  ),
                ),
              ),
              txt(
                "Welcome Back",
                color: Colors.white,
                weight: FontWeight.w500,
                size: 26,
              ),
              txt(
                "Log in to your existing CirclePro account",
                color: Colors.white,
                weight: FontWeight.w300,
                size: 12,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 300.h,
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFF36343B),
                    hintText: "Username",
                    hintStyle: TextStyle(color: Color(0xFF528ADE)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF528ADE)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 300.h,
                child: TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  txt("Forgot Password?",
                      color: Color(0xFF9BB1FF),
                      weight: FontWeight.w300,
                      size: 12),
                  SizedBox(
                    width: 40,
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              InkWell(
                // onTap: () => Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => SignInPage())),
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
                              'Log In ',
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
                height: 80.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  txt("Don't have an account? ",
                      color: Color(0xFF9BB1FF),
                      weight: FontWeight.w300,
                      size: 12),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: txt(
                      "Sign Up",
                      color: Color(0xFF5AC4FF),
                      weight: FontWeight.w500,
                      size: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
