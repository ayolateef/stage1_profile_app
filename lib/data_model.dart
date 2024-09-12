import 'package:flutter/foundation.dart';

class CV {
  String fullName;
  String slackUsername;
  String githubHandle;
  String bio;
  String slackProfileImageUrl;

  CV({
    required this.fullName,
    required this.slackUsername,
    required this.githubHandle,
    required this.bio,
    required this.slackProfileImageUrl,
  });
}

class CVProvider with ChangeNotifier {
  CV _cvData = CV(
      fullName: "Abdullateef Ayodele Salaudeen",
      slackUsername: "ayolateef",
      githubHandle: "https://github.com/ayolateef?tab=repositories",
      bio:
          "I'm a beginner Flutter developer who loves making apps for phones. I'm still learning but can create apps that look nice and work on Android and iPhone. I want to learn more by interning at HNG and working with other friendly developers. I like making apps that are easy for people to use, and I'm excited to learn and grow together with your team. \nLet's make cool apps together! ",
      slackProfileImageUrl: "assets/images/pic.jpeg");

  CV get cvData => _cvData;

  void updateCVData(CV newCVData) {
    _cvData = newCVData;
    notifyListeners();
  }
}
