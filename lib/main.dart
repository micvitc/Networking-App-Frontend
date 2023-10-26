import 'package:flutter/material.dart';
import 'package:networking_mic/ui/pages/homePage.dart';
import 'package:networking_mic/ui/pages/profilepage.dart';
import 'package:networking_mic/ui/pages/settings/settings.dart';
import 'package:networking_mic/ui/widget/profilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Settings(),
    );
  }
}
