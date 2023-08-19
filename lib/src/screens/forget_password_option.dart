import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/foget_password_widget.dart';
import 'forget_password_mail.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBtnSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineSmall),
            Text(tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 30.0),
            ForgetPaswordWidget(
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEMail,
            ),
            const SizedBox(height: 20.0),
            ForgetPaswordWidget(
              onTap: () {},
              btnIcon: Icons.mobile_friendly_outlined,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
            ),
          ],
        ),
      ),
    );
  }
}
