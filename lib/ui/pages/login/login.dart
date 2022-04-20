import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'one.dart';
import 'dos.dart';
import 'tres.dart';

import '../../controllers/authentication_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  AuthenticationController authenticationController = Get.find();

  void signIn() {
    authenticationController.signup('a@a.com', '123456');
    authenticationController.signup('b@b.com', '123456');
    authenticationController.signup('c@c.com', '123456');
  }

  void login(String user) {
    authenticationController.login(user, '123456');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => one(),
                        )),
                    child: const Text("Login A")),
                ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => dos(),
                        )),
                    child: const Text("Login B")),
                ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => tres(),
                        )),
                    child: const Text("Login C")),
                ElevatedButton(onPressed: signIn, child: const Text("Sign in")),
              ]),
        ),
      ),
    );
  }
}
