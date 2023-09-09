import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.purple,
          fontFamily: "Nexa",
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.black)),
      home: HomeScreen(),
    );
  }
}
