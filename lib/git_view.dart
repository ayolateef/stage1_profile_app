import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GithubWebView extends StatelessWidget {
  final String githubUrl;

  const GithubWebView(this.githubUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GitHub Profile"),
      ),
      body: WebView(
        initialUrl: githubUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
