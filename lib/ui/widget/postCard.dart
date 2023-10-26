import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:networking_mic/ui/pages/post.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 380,
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
                  const Column(
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
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Post();
                  }));
                },
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
                ),
              ),
            ),
            Positioned(
              top: 330,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const LikeButton(
                      padding: EdgeInsets.only(left: 10),
                      likeCount: 69,
                      animationDuration: Duration(milliseconds: 200),
                      likeCountAnimationDuration: Duration(milliseconds: 130),
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Post();
                          }));
                        },
                        label: const Text("Comment",
                            style: TextStyle(color: Colors.white)),
                        icon: const Icon(
                          Icons.comment,
                        ),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            elevation: 0)),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton.icon(
                        onPressed: () {},
                        label: const Text("Share",
                            style: TextStyle(color: Colors.white)),
                        icon: const Icon(
                          Icons.share,
                        ),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.transparent,
                            elevation: 0))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
