import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:networking_mic/utils/textUtil.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 130.h, right: 70.0.h, left: 70.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txt(
                  "Join ",
                  color: Colors.white,
                  size: 32.sp,
                  weight: FontWeight.w400,
                ),
                txt(
                  "CirclePro",
                  color: Colors.white, size: 32.sp, weight: FontWeight.w700,
                  // isBold: true,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(
              children: [
                Container(
                  height: 161.h,
                  width: 150.h,
                  color: Colors.white,
                  child: Image.asset(
                    'assets/icons/profile.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    child: Container(
                  width: 64,
                  height: 34,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 64,
                          height: 34,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF4F378B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 9,
                        top: 6,
                        child: SizedBox(
                          width: 44,
                          height: 22,
                          child: Text(
                            'edit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 2.30,
                              letterSpacing: 0.15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
            InkWell(
              onTap: null,
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
                            'Get Started!',
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
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txt(
                  "Already a user? ",
                  color: Colors.white,
                  size: 14.6.sp,
                ),
                txt(
                  "Sign In Instead",
                  color: const Color(0xFF5AC4FF),
                  size: 14.60.sp,
                  // isBold: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
