import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:networking_mic/ui/pages/gettingStarted/get_started_page.dart';
import 'package:networking_mic/ui/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

ThemeData customTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.red,
  colorScheme: ColorScheme.dark(
    background: const Color(0xFF0C141E),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: customTheme,
          home: GetStarted(),
        );
      },
    );
  }
}
