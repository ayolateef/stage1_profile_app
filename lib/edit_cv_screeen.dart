import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_model.dart';

class EditCVScreen extends StatefulWidget {
  @override
  _EditCVScreenState createState() => _EditCVScreenState();
}

class _EditCVScreenState extends State<EditCVScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController slackUsernameController = TextEditingController();
  final TextEditingController githubHandleController = TextEditingController();
  final TextEditingController bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final cv = Provider.of<CVProvider>(context, listen: false).cvData;
    fullNameController.text = cv.fullName;
    slackUsernameController.text = cv.slackUsername;
    githubHandleController.text = cv.githubHandle;
    bioController.text = cv.bio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit CV"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: fullNameController,
                decoration: const InputDecoration(
                    labelText: "Full Name",
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              TextField(
                controller: slackUsernameController,
                decoration: InputDecoration(
                    labelText: "Slack Username",
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              TextField(
                controller: githubHandleController,
                decoration: InputDecoration(
                    labelText: "GitHub Handle",
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ),
              TextField(
                controller: bioController,
                decoration: InputDecoration(
                    labelText: "Bio",
                    labelStyle:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                maxLines: 5,
              ),
              ElevatedButton(
                onPressed: () {
                  final updatedCV = CV(
                    fullName: fullNameController.text,
                    slackUsername: slackUsernameController.text,
                    githubHandle: githubHandleController.text,
                    bio: bioController.text,
                    slackProfileImageUrl: '',
                  );
                  Provider.of<CVProvider>(context, listen: false)
                      .updateCVData(updatedCV);
                  Navigator.pop(context);
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
