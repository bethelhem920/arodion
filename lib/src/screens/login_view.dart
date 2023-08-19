import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/widget/common_widgets/common_widgets.dart';
import 'package:arodion/src/widget/login_footer_widget.dart';
import 'package:flutter/material.dart';

import '../widget/login_form_widget.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromRGBO(217, 217, 217, 1),
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CommonWidgets(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
