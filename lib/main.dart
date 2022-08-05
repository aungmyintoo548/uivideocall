import 'package:vcallui/homepage.dart';
import 'package:vcallui/screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:vcallui/screens/dialScreen/dial_screen.dart';
import 'package:vcallui/screens/groupCall/group_call_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "SF UI",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
