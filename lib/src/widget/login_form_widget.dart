import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/screens/forget_password_option.dart';
import 'package:arodion/src/screens/home_screen.dart';
import 'package:arodion/src/screens/store.dart';
import 'package:arodion/src/widget/bottomnv.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefix: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: tFormaHeight - 15,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefix: Icon(Icons.lock),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: tFormaHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBtnSheet(context);
                  },
                  child: const Text(tForgetPassword)),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const bottomnav()),
                  child: Text(tLogin.toUpperCase())),
            )
          ],
        ),
      ),
    );
  }
}
