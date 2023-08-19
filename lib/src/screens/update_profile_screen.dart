import 'package:arodion/src/constants/colors.dart';
import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          tEditProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(
                            image: AssetImage(tWelcomeScreenImage)))),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor,
                      ),
                      child: const Icon(LineAwesomeIcons.camera,
                          size: 20, color: Colors.black)),
                )
              ],
            ),
            const SizedBox(height: 50),
            Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tFullName),
                    prefixIcon: Icon(LineAwesomeIcons.user),
                  ),
                ),
                const SizedBox(
                  height: tFormaHeight - 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tEmail),
                    prefixIcon: Icon(LineAwesomeIcons.envelope),
                  ),
                ),
                const SizedBox(
                  height: tFormaHeight - 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tPhoneNo),
                    prefixIcon: Icon(LineAwesomeIcons.phone),
                  ),
                ),
                const SizedBox(
                  height: tFormaHeight - 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text(tPassword),
                    prefixIcon: Icon(Icons.lock_outlined),
                  ),
                ),
                const SizedBox(height: tFormaHeight),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const UpdateProfileScreen()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tPrimaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text(
                      tEditProfile,
                      style: TextStyle(color: tDarkColor),
                    ),
                  ),
                )
              ],
            ))
          ]),
        ),
      ),
    );
  }
}
