import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSocialMediaWidget extends StatelessWidget {
  const CustomSocialMediaWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff43484E).withOpacity(.5),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 80,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 30,
              height: 30,
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
