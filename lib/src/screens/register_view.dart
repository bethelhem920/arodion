import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/screens/login_view.dart';
import 'package:arodion/src/widget/common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/register_form_widget.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(246, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                const CommonWidgets(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                RegisterFormWidget(),
                TextButton(
                    onPressed: () => Get.to(() => const LoginView()),
                    child: Text.rich(TextSpan(children: [
                      TextSpan(text: tAlreadyHaveAnAccount),
                      TextSpan(text: tLogin.toUpperCase())
                    ])))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
