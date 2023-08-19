import 'package:arodion/src/constants/colors.dart';
import 'package:flutter/material.dart';

class TwoSideRoundedButton extends StatelessWidget {
  const TwoSideRoundedButton(
      {required this.text,
      this.radious = 29,
      required this.onPress,
      super.key});
  final String text;
  final double radious;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
