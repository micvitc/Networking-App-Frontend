// import 'package:flutter/material.dart';

// class UserProfile {
//   final String name;
//   final String id;
//   final String personType;
//   final String aboutMe;
//   final int posts;
//   final int followers;
//   final int following;

//   UserProfile({
//     required this.name,
//     required this.id,
//     required this.personType,
//     required this.aboutMe,
//     required this.posts,
//     required this.followers,
//     required this.following,
//   });
// }

// class UserProfileProvider extends ChangeNotifier {
//   UserProfile _userProfile = UserProfile(
//     name: "Madhav Raizada",
//     id: "22BLC1173",
//     personType: "Student",
//     aboutMe: "Lorem Ipsum is simply dummy...",
//     posts: 12,
//     followers: 12,
//     following: 12,
//   );

//   UserProfile get userProfile => _userProfile;

//   void updateUserProfile(UserProfile newProfile) {
//     _userProfile = newProfile;
//     notifyListeners();
//   }
// }

import 'package:flutter/material.dart';

class ProfileController extends ChangeNotifier {
  String _personType = "Student"; // Initial person type
  String _userName = "Madhav Raizada";
  String _userID = "22BLC1173";
  int _postsCount = 12;
  int _followersCount = 12;
  int _followingCount = 12;
  String _bio =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.";

  // Getter methods
  String get personType => _personType;
  String get userName => _userName;
  String get userID => _userID;
  int get postsCount => _postsCount;
  int get followersCount => _followersCount;
  int get followingCount => _followingCount;
  String get bio => _bio;

  // Setter method
  void setPersonType(String newPersonType) {
    _personType = newPersonType;
    notifyListeners();
  }

  // Add more setter methods for other states as needed
  void setUserName(String newUserName) {
    _userName = newUserName;
    notifyListeners();
  }

  void setUserID(String newUserID) {
    _userID = newUserID;
    notifyListeners();
  }
  void setpostsCount(int newpostsCount) {
    _postsCount = newpostsCount;
    notifyListeners();
  }
  void setfollowersCount(int newfollowersCount) {
    _followersCount = newfollowersCount;
    notifyListeners();
  }
  void setfollowingCount(int newfollowingCount) {
    _followingCount   = newfollowingCount;
    notifyListeners();
  }
  void setbio(String newbio) {
    _bio = newbio;
    notifyListeners();
  }
  
 
}
