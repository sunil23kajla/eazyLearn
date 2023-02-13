import 'dart:async';

import 'package:eazylearn/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  static const String routeName = '/video-player';

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(true)
      ..initialize().then((value) => _controller.play());

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  bool pause = true;
  @override
  Widget build(BuildContext context) {
    var size = Sizess();
    return Scaffold(
      backgroundColor: const Color(0xFF9dc6fe),
      body: SizedBox(
        height: size.height(context),
        width: size.width(context),
        child: Stack(
          children: [
            Positioned(
                left: size.width(context) * .075,
                top: size.height(context) * .08,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/Group.png',
                    height: size.height(context) * .04,
                  ),
                )),
            _controller.value.isInitialized
                ? Center(
                    child: SizedBox(
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
            Positioned(
              bottom: size.height(context) * .37,
              left: size.width(context) * .05,
              child: Row(
                children: pause
                    ? [
                        InkWell(
                            onTap: () async {
                              await Future.delayed(const Duration(seconds: 1));
                              setState(() {
                                pause = !pause;
                                if (_controller.value.isPlaying) {
                                  _controller.pause();
                                } else {
                                  _controller.play();
                                }
                              });
                              await Future.delayed(const Duration(seconds: 2));
                              setState(() {
                                pause = !pause;
                              });
                            },
                            child: _controller.value.isPlaying
                                ? const Icon(
                                    Icons.pause,
                                    size: 30,
                                    color: Color(0xFFDA2E5F),
                                  )
                                : Image.asset(
                                    'assets/Resume Button.png',
                                    height: 30,
                                  )),
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          clipBehavior: Clip.antiAlias,
                          width: size.width(context) * .8,
                          height: size.height(context) * .015,
                          child: VideoProgressIndicator(
                            _controller,
                            allowScrubbing: true,
                            colors: const VideoProgressColors(
                                playedColor: Color(0xFFDA2E5F),
                                backgroundColor: Color(0xFFDEDDDD)),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ]
                    : [],
              ),
            ),
            Positioned(
              top: size.height(context) * .44,
              left: size.width(context) * .42,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  if (pause == true) {
                    await Future.delayed(const Duration(seconds: 1));
                  }
                  setState(() {
                    pause = !pause;
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                  // await Future.delayed(const Duration(seconds: 2));
                  // setState(() {
                  //   pause = !pause;

                  // });
                },
                child: SizedBox(
                    height: size.height(context) * .1,
                    width: size.width(context) * .2,
                    child: _controller.value.isPlaying
                        ? Container()
                        : Image.asset(
                            'assets/Resume Button.png',
                          )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
