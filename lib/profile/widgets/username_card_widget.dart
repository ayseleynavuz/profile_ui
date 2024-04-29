import 'package:flutter/material.dart';
import 'package:pro_animated_blur/pro_animated_blur.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: const Color(0xffB2B2B2).withOpacity(.6),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: ProAnimatedBlur(
        blur: 15,
        duration: const Duration(milliseconds: 200),
        child: Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Kaydet"),
                    SizedBox(width: 10),
                    Icon(Icons.save),
                    SizedBox(width: 5),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Adı Soyadı",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  "Pazarlama Stratejileri Uzmanı",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
