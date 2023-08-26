import 'package:flutter/material.dart';
import 'package:networking_mic/ui/pages/homeScreen.dart';
import 'package:networking_mic/ui/pages/label.dart';
import 'package:networking_mic/ui/pages/notificaion.dart';
import 'package:networking_mic/ui/pages/university.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const UniversityPage(),
    const LabelPage(),
    const NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF131a32),
        selectedItemColor: const Color(0xFF9bb1f1),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            label: 'University',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.label,
            ),
            label: 'Label',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
