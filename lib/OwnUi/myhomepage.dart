import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _remoteUid;
  bool isJoined = false;
  bool isSpeakeroff = false;
  bool switchCamera = false;
  // List<int> remoteUid = [];

  String doctorStatus = "Connecting....", mystatus = "none";
  bool mymute = false, mycamoff = false;
  bool drmute = false, drcamoff = false;

  void showtoast() {
    Fluttertoast.showToast(
        msg: mystatus,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Center(
            child: _remoteVideo(),
          ),

          Positioned(
            bottom: 30,
            child: Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                      onPressed: () {
                        mymute = !mymute;
                        setState(() {
                          mystatus = mymute ? "you muted" : "you unmute";
                          showtoast();
                        });
                      },
                      child: mymute
                          ? const Icon(
                              Icons.mic_off,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.mic,
                              color: Colors.grey,
                            )),
                  TextButton(
                      onPressed: () {
                        mycamoff = !mycamoff;
                        setState(() {
                          mystatus = mycamoff ? "your cam off" : "your cam on";
                          showtoast();
                        });
                      },
                      child: mycamoff
                          ? const Icon(
                              Icons.videocam_off,
                              color: Colors.grey,
                            )
                          : const Icon(
                              Icons.video_camera_front_rounded,
                              color: Colors.grey,
                            )),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isSpeakeroff = !isSpeakeroff;
                        mystatus = isSpeakeroff ? "speaker off" : "speaker on";
                        showtoast();
                      });
                    },
                    child: isSpeakeroff
                        ? const Icon(
                            Icons.volume_off_outlined,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.volume_up_outlined,
                            color: Colors.grey,
                          ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isJoined = !isJoined;
                      });
                    },
                    child: isJoined
                        ? const Icon(
                            Icons.call_end,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.call,
                            color: Colors.red,
                          ),
                  ),
                ])),
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    switchCamera = !switchCamera;
                    mystatus = switchCamera ? "font camera" : "rear camera";
                    showtoast();
                  });
                },
                child: const Icon(
                  Icons.switch_camera,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 100,
              height: 150,
              child: Center(
                child: isJoined
                    ? mycamoff
                        ? Container()
                        : Container(color: Colors.yellow)
                    : const CircularProgressIndicator(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Display remote user's video
  Widget _remoteVideo() {
    if (_remoteUid != null && !drcamoff) {
      return const Text("video");
    } else {
      return Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    child: Image.asset("assets/doctor.png"))),
            Text(
              doctorStatus,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }
  }
}
