import 'package:flutter/material.dart';

import 'package:networking_mic/ui/pages/homePage.dart';
import 'package:provider/provider.dart';
import 'package:networking_mic/ui/pages/profilepage.dart';
import 'package:networking_mic/ui/widget/profilePage.dart';

import 'controllers/profilecontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
