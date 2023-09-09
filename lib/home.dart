import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'git_view.dart';

class HomeScreen extends StatelessWidget {
  final String slackName = "Abdullateef Ayodele Salaudeen";
  final String slackProfileImage = "assets/images/pic.jpeg";
  final String githubUrl = "https://github.com/ayolateef";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(slackProfileImage),
            ),
            const SizedBox(height: 20),
            Text(
              slackName,
              style:
                  GoogleFonts.alef(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Open GitHub profile in WebView
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GithubWebView(githubUrl),
                  ),
                );
              },
              child: const Text("Open GitHub"),
            ),
          ],
        ),
      ),
    );
  }
}
