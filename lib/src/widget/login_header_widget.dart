import 'package:arodion/src/constants/text_string.dart';
import 'package:flutter/material.dart';

import '../constants/image_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(tWelcomeScreenImage),
          height: Size.height * 0.2,
        ),
        const Text(
          tLoginTitle,
        ),
        const Text(
          tLoginSubTitle,
        ),
      ],
    );
  }
}
