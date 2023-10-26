import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:networking_mic/ui/pages/gettingStarted/sign_in_page.dart';
import 'package:networking_mic/utils/textUtil.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    height: 116 * 4,
                    width: 104,
                    // color: Colors.amber,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 34,
                            ),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 104,
                            height: 116,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: const Alignment(0.00, -1.00),
                                end: const Alignment(0, 1),
                                colors: [
                                  Colors.white.withOpacity(0.5600000023841858),
                                  const Color.fromARGB(255, 27, 27, 27)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  height: 116 * 4,
                  width: 100,
                  // color: Colors.amber,
                  child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 34,
                          ),
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: 104,
                          height: 116,
                          clipBehavior: Clip.antiAlias,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: const Alignment(0.00, -1.00),
                              end: const Alignment(0, 1),
                              colors: [
                                Colors.white.withOpacity(0.5600000023841858),
                                const Color.fromARGB(255, 27, 27, 27)
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    height: 116 * 4,
                    width: 100,
                    // color: Colors.amber,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 34,
                            ),
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 104,
                            height: 116,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(
                                begin: const Alignment(0.00, -1.00),
                                end: const Alignment(0, 1),
                                colors: [
                                  Colors.white.withOpacity(0.5600000023841858),
                                  const Color.fromARGB(255, 27, 27, 27)
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(28),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            txt(
              "Find new connections",
              color: Colors.white,
              size: 32.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                txt(
                  "with ",
                  color: Colors.white,
                  size: 32.sp,
                ),
                txt(
                  "CirclePro!",
                  color: Colors.white,
                  size: 32.sp,
                  isBold: true,
                ),
              ],
            ),
            txt(
              "Ever wondered if your life would be easier if you can connect with from university in one place without struggling over multiple apps? This is for you!",
              color: Colors.white,
              size: 16.sp,
              weight: FontWeight.w500,
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SignInPage())),
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
            SizedBox(
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
                  color: Color(0xFF5AC4FF),
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
