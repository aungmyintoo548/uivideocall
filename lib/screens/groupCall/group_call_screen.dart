import 'package:vcallui/components/rounded_button.dart';
import 'package:vcallui/constants.dart';
import 'package:vcallui/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';

class GroupCallScreen extends StatelessWidget {
  const GroupCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: const Body(),
      bottomNavigationBar: buildBottomNavBar(context),
    );
  }

  Container buildBottomNavBar(BuildContext context) {
    return Container(
      color: kBackgoundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              RoundedButton(
                color: kRedColor,
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Close.svg",
                press: () {
                  Navigator.pop(context);
                },
              ),
              const Spacer(flex: 3),
              RoundedButton(
                color: const Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Volume.svg",
                press: () {},
              ),
              const Spacer(),
              RoundedButton(
                color: const Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Mic.svg",
                press: () {},
              ),
              RoundedButton(
                color: const Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Video.svg",
                press: () {},
              ),
              RoundedButton(
                color: const Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Repeat.svg",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/Icon Back.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/Icon User.svg",
            height: 24,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
