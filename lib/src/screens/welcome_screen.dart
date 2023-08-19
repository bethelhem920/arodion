import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/screens/login_view.dart';
import 'package:arodion/src/screens/register_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color.fromRGBO(217, 217, 217, 1),
      padding: const EdgeInsets.all(tDefaultSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage(tWelcomeScreenImage)),
          Column(
            children: [
              const Text(tWelcomeTitle),
              const Text(tWelcomeSubTitle),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => Get.to(() => const RegisterView()),
                  child: Text(tSignup.toUpperCase()),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const LoginView()),
                    child: Text(tLogin.toUpperCase())),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
