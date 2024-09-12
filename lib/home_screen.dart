import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cv_info.dart';
import 'data_model.dart';
import 'edit_cv_screeen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cv = Provider.of<CVProvider>(context).cvData;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My CV"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CVInfoWidget(cv: cv),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditCVScreen(),
                        ),
                      );
                    },
                    child: const Text("Edit CV"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
