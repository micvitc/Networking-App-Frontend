import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 340,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: const Color(0xFF131a32),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 15,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: const Color(0xFF96B3FF),
                    ),
                    child: const Center(
                      child: Text(
                        'RA',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Rick Astley",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "21MIS1000",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 160,
                  ),
                  const IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Positioned(
              top: 70,
              child: SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/icons/media.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                top: 270,
                left: 15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Starting a new position at Microsoft",
                        style: TextStyle(color: Colors.white)),
                    const Text(
                      "Innovation Club!",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "Aug 08,2023",
                      style: TextStyle(color: Colors.grey.shade300),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
