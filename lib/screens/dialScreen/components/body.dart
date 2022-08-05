import 'package:vcallui/components/dial_user_pic.dart';
import 'package:vcallui/components/rounded_button.dart';
import 'package:vcallui/constants.dart';
import 'package:vcallui/size_config.dart';
import 'package:flutter/material.dart';
import 'dial_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Anna williams",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white),
            ),
            const Text(
              "Calling…",
              style: TextStyle(color: Colors.white60),
            ),
            const VerticalSpacing(),
            const DialUserPic(image: "assets/images/calling_face.png"),
            const Spacer(),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                DialButton(
                  iconSrc: "assets/icons/Icon Mic.svg",
                  text: "Audio",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Volume.svg",
                  text: "Microphone",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Video.svg",
                  text: "Video",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Message.svg",
                  text: "Message",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon User.svg",
                  text: "Add contact",
                  press: () {},
                ),
                DialButton(
                  iconSrc: "assets/icons/Icon Voicemail.svg",
                  text: "Voice mail",
                  press: () {},
                ),
              ],
            ),
            const VerticalSpacing(),
            RoundedButton(
              iconSrc: "assets/icons/call_end.svg",
              press: () {
                Navigator.pop(context);
              },
              color: kRedColor,
              iconColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
