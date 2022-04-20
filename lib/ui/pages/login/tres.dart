import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'package:firebase_database/firebase_database.dart';
import '../../controllers/authentication_controller.dart';

class tres extends StatelessWidget {
  tres({Key? key}) : super(key: key);
  final dataBaseReference = FirebaseDatabase.instance.reference();
  AuthenticationController authenticationController = Get.find();

  _logout() async {
    try {
      await authenticationController.logout();
    } catch (e) {
      logError(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat App User: c@c.com"),
          actions: [
            IconButton(onPressed: null, icon: Icon(Icons.sailing_rounded)),
            IconButton(
                icon: const Icon(Icons.exit_to_app),
                onPressed: () {
                  _logout();
                }),
          ],
        ),
        body: Center(
            child: Column(
          children: [
            Text("LISTA DE CONTACTOS"),
            Row(
              children: [Text("USER: a@a.com")],
            ),
            Row(
              children: [Text("USER: b@b.com")],
            )
          ],
        )));
  }
}
