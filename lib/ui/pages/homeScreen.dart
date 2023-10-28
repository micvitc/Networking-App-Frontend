import 'package:flutter/material.dart';
import 'package:networking_mic/ui/pages/profilepage.dart';
import 'package:networking_mic/ui/widget/postCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0C141E),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C141E),
        leading: const IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
            size: 35,
          ),
          onPressed: null,
        ),
        title: const Center(
          child: Text(
            "CirclePro",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: SizedBox(
                height: 45,
                width: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset("assets/icons/profile.png"),
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          return const PostCard();
        }),
      ),
    );
  }
}
