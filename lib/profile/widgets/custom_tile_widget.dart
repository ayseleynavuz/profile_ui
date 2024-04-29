import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key,
    required this.color,
    required this.title,
    required this.textColor,
    this.iconColor = Colors.black,
    this.fontSize,
    this.trailing,
    this.height,
    this.gradient, 
    this.iconPath,
  });
  final Color color, iconColor;
  final String title;
  final Color textColor;
  final double? fontSize;
  final Widget? trailing;
  final double? height;
  final Gradient? gradient;
  final String? iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        decoration: BoxDecoration(
          color: color,
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
          
        ),
        height: height ?? 60,
        child: Row(
          children: [
            const SizedBox(width: 10),
            title.isEmpty || iconPath == null
                ? const SizedBox.shrink()
                : SvgPicture.asset(
                    iconPath!,
                    width: 30,
                    height: 30,
                  ),
            const SizedBox(width: 10),
            title.isEmpty
                ? SvgPicture.asset(
                    iconPath!,
                    width: 30,
                    height: 30,
                  )
                : Text(
                    title,
                    style: TextStyle(fontSize: fontSize, color: textColor),
                  ),
          ],
        ));
  }

  
}
