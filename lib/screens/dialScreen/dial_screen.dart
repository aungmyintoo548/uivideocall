import 'package:vcallui/constants.dart';
import 'package:vcallui/size_config.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';

class DialScreen extends StatelessWidget {
  const DialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
