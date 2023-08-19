import 'package:arodion/src/constants/colors.dart';
import 'package:arodion/src/constants/image_string.dart';
import 'package:arodion/src/constants/sizes.dart';
import 'package:arodion/src/constants/text_string.dart';
import 'package:arodion/src/screens/home_screen.dart';
import 'package:arodion/src/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';

import '../widget/bottomnv.dart';
import '../widget/common_widgets/profile_menu.dart';
import 'update_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool darkMode = false;
  var mainTheme = ThemeData.light();

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        // leading: IconButton(
        //     onPressed: () => Get.to(() => const bottomnav()),
        //     icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(
          'Profile',
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                  isDark ? LineAwesomeIcons.sun_o : LineAwesomeIcons.moon_o))
        ],
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
                      child: const Icon(LineAwesomeIcons.pencil,
                          size: 20, color: Colors.black)),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              tProfileHeading,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(tProfileSubHeading,
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 20),
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
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 10),
            ProfileMenuWidget(
              icon: LineAwesomeIcons.list_alt,
              onPress: () => Get.to(() => const WelcomeScreen()),
              title: 'Wishlist',
            ),
            ProfileMenuWidget(
              icon: LineAwesomeIcons.cog,
              onPress: () {},
              title: 'Setting',
            ),
            ProfileMenuWidget(
              icon: LineAwesomeIcons.sign_out,
              onPress: () => Get.to(() => const WelcomeScreen()),
              title: 'Logout',
            ),
          ]),
        ),
      ),
    );
  }
}
