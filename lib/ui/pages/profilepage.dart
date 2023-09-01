import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/profilecontroller.dart';
import '../widget/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileController = Provider.of<ProfileController>(context);

    //final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF131a32),
      
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Circle Pro",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                      "https://aniyuki.com/wp-content/uploads/2022/04/aniyuki-sasuke-uchiha-avatar-29.jpg"),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Posts",
                            style: style1,
                          ),
                          Text(
                            profileController.postsCount
                                .toString(), // Use postsCount from the controller
                            style: style2,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Followers",
                            style: style1,
                          ),
                          Text(
                            profileController.followersCount
                                .toString(), // Use followersCount from the controller
                            style: style2,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Following",
                            style: style1,
                          ),
                          Text(
                            profileController.followingCount
                                .toString(), // Use followingCount from the controller
                            style: style2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      profileController
                          .userName, // Use userName from the controller
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        color: profileController.personType == "Student"
                            ? Color.fromARGB(255, 122, 148, 245)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          profileController
                              .personType, // Use personType from the controller
                          style: const TextStyle(
                              color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  profileController.userID, // Use userID from the controller
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  profileController.bio, // Use bio from the controller
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                  maxLines: 3,
                )
              ],
            ),
            const SizedBox(height: 12),
            const Align(
                alignment: Alignment.topLeft,
                child: Text("Activity", style: style1)),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                ),
                itemCount: 9, // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey,
                    ),
                    child: Image.asset(
                      "assets/icons/media.png",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
