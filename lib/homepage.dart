import 'package:vcallui/screens/audioCallWithImage/audio_call_with_image_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("callerui")),
      body: Center(
        child: ElevatedButton(
          child: const Text("go"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AudioCallWithImage(),
                  // builder: (context) => const DialScreen(),
                  // builder: (context) => const GroupCallScreen(),
                ));
          },
        ),
      ),
    );
  }
}
