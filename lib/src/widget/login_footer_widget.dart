import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/screens/login_view.dart';
import 'package:arodion/src/screens/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () => Get.to(() => const RegisterView()),
            child: const Text.rich(
              TextSpan(
                text: tDontHaveAnAccount,
                children: [
                  TextSpan(
                    text: tSignup,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
