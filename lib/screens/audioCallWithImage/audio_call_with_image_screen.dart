import 'package:vcallui/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  const AudioCallWithImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
