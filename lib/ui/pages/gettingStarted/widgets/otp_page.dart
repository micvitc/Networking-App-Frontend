import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:networking_mic/ui/pages/homePage.dart';
import 'package:networking_mic/utils/appSizeUtil.dart';
import 'package:networking_mic/utils/textUtil.dart';

class OtpPage extends StatefulWidget {
  OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  int activePage = 0;

  Widget otpWidget() {
    return OtpTextField(
      fieldWidth: w(context) * 0.15,
      borderRadius: BorderRadius.circular(10),
      obscureText: false,
      numberOfFields: 4,
      cursorColor: Color(0xFF528ADE),
      borderColor: Color(0xFF528ADE),
      showFieldAsBox: true,
      onCodeChanged: (String code) {},
      onSubmit: (String verificationCode) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Verification Code"),
                content: Text('Code entered is $verificationCode'),
              );
            });
      }, // end onSubmit
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: h(context) * 0.085,
                  width: w(context) * 0.18,
                  decoration: BoxDecoration(
                    color: const Color(0xFF131A32),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: (activePage == 0 || activePage == 1)
                        ? Icon(Icons.mail_outline, size: 40)
                        : Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 4,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.check, size: 40),
                          ),
                  ),
                ),
                SizedBox(
                  height: h(context) * 0.02,
                ),
                if (activePage == 1 || activePage == 0)
                  txt(
                    "Check your email",
                    weight: FontWeight.w500,
                    size: 26,
                    color: Colors.white,
                  ),
                if (activePage == 2)
                  txt(
                    "Email verified!",
                    weight: FontWeight.w500,
                    size: 26,
                    color: Colors.white,
                  ),
                SizedBox(
                  height: h(context) * 0.04,
                ),
                if (activePage == 0 || activePage == 1)
                  txt("We sent a verification link to",
                      weight: FontWeight.w400, color: Colors.white, size: 18),
                SizedBox(
                  height: h(context) * 0.003,
                ),
                if (activePage == 0 || activePage == 1)
                  txt(
                    "rick.astley@vitstudent.ac.in",
                    weight: FontWeight.w400,
                    color: const Color(0xFF5AC4FF),
                    size: 18,
                  ),
                if (activePage == 2)
                  Container(
                    width: w(context) * 0.7,
                    child: txt("Click continue to proceed further",
                        weight: FontWeight.w400, color: Colors.white, size: 18),
                  ),
                SizedBox(
                  height: h(context) * 0.07,
                ),
                if (activePage == 1) otpWidget(),
                SizedBox(
                  height: h(context) * 0.07,
                ),
                if (activePage == 0)
                  InkWell(
                    onTap: () {
                      setState(() {
                        activePage = 1;
                      });
                    },
                    child: Container(
                      height: h(context) * 0.06,
                      width: w(context) * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF528ADE),
                      ),
                      child: Center(
                        child: txt(
                          "Enter Code Manually",
                          weight: FontWeight.w400,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                if (activePage == 1)
                  InkWell(
                    onTap: () {
                      setState(() {
                        activePage = 2;
                      });
                    },
                    child: Container(
                      height: h(context) * 0.06,
                      width: w(context) * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF528ADE),
                      ),
                      child: Center(
                        child: txt(
                          "Verify Email",
                          weight: FontWeight.w400,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                if (activePage == 2)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      height: h(context) * 0.06,
                      width: w(context) * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF528ADE),
                      ),
                      child: Center(
                        child: txt(
                          "Continue",
                          weight: FontWeight.w400,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                SizedBox(
                  height: h(context) * 0.02,
                ),
                if (activePage == 1)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      txt(
                        "Didn’t receive the email?",
                        size: 14,
                        color: Colors.white,
                        weight: FontWeight.w300,
                      ),
                      SizedBox(
                        width: w(context) * 0.01,
                      ),
                      txt(" Click to resend",
                          size: 14,
                          color: Color(0xFF5AC4FF),
                          weight: FontWeight.w400),
                    ],
                  ),
                SizedBox(
                  height: h(context) * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: w(context) * 0.02,
                    ),
                    txt("Back to sign up", color: Colors.white, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
