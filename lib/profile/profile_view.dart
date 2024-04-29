import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_ui/profile/widgets/custom_socialmedia_widget.dart';
import 'package:profile_ui/profile/widgets/custom_tile_widget.dart';
import 'package:profile_ui/profile/widgets/username_card_widget.dart';

class ProfilSayfasi extends StatefulWidget {
  const ProfilSayfasi({Key? key}) : super(key: key);

  @override
  State<ProfilSayfasi> createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4E8EA),
      body: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            expandedHeight: 500.0,
            toolbarHeight: 250,
            floating: false,
            stretch: false,
            backgroundColor: const Color(0xffE4E8EA),
            pinned: true,
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: UsernameCard(),
            ),
            collapsedHeight: 250,
            flexibleSpace: Container(
              color: const Color(0xffE4E8EA),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/profile.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Positioned(
                    right: 39,
                    top: 80,
                    child: LayoutBuilder(builder: (context, constraints) {
                      return const Icon(
                        Icons.exit_to_app,
                        color: Colors.green,
                        size: 30,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .8,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Transform.translate(
                            offset: const Offset(0, 60),
                            child: Transform.scale(
                              scale: 1.2,
                              child: Transform.rotate(
                                angle: 3.14,
                                child: Image.asset(
                                  'assets/profile.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          ClipRRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 40, sigmaY: 60),
                              child: Container(
                                color: Colors.grey.withOpacity(0.1),
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const CustomTile(
                          color: Color(0xff24BC00),
                          title: '+90 555 555 55 55',
                          iconPath: "assets/phone.svg",
                          textColor: Colors.white,
                          fontSize: 24,
                        ),
                        const SizedBox(height: 20),
                        const CustomTile(
                          color: Colors.white,
                          title: 'name@google.com',
                          iconPath: "assets/mail.svg",
                          textColor: Colors.black,
                          height: 40,
                        ),
                        const SizedBox(height: 20),
                        CustomTile(
                          color: const Color(0xff43484E).withOpacity(1),
                          title: 'name@google.com',
                          iconPath: "assets/twitter.svg",
                          textColor: Colors.white,
                          height: 40,
                        ),
                        const SizedBox(height: 20),
                        CustomTile(
                          color: const Color(0xff43484E).withOpacity(1),
                          title: 'facebook/name',
                          iconPath: "assets/facebook.svg",
                          textColor: Colors.white,
                          iconColor: Colors.white,
                          fontSize: 16,
                          height: 40,
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: Row(
                            children: [
                              const Spacer(),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: const CustomSocialMediaWidget(
                                  icon: "assets/linkedin.svg",
                                  text: "Linkedin",
                                ),
                              ),
                              const SizedBox(width: 20),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.35,
                                child: const CustomSocialMediaWidget(
                                  icon: "assets/linkedin.svg",
                                  text: "Linkedin",
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        // map için alan bırakıldı.
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 40),
                          height: 100,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Banka Bilgileri",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                "Adı Soyadı - İş Bankası",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTile(
                          color: Colors.white,
                          title: "TR - 0003 0001 0001 0002",
                          textColor: Colors.black,
                          fontSize: 16,
                          trailing: Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SvgPicture.asset(
                              "assets/copy.svg",
                              width: 10,
                              height: 10,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
