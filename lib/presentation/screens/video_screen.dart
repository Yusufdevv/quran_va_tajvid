import 'package:flutter/material.dart';
import 'package:quran_va_tajvid/model/videe_item.dart';
import 'package:quran_va_tajvid/model/videolist_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoScreen extends StatefulWidget {
  final ItemVideo itemVideo;
  const VideoScreen({required this.itemVideo, Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;

  bool? _isPlayerReady;

  @override
  void initState() {
    super.initState();
    _isPlayerReady = false;
    _controller = YoutubePlayerController(
      initialVideoId: widget.itemVideo.videoId,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
      ),
    );
  }

  // void _listener() {
  //   if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
  //     //
  //   }
  // }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.itemVideo.videoTitle,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(8),
            height: 300,
            width: double.infinity,
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {
                _isPlayerReady = true;
                print('Player is ready. $_isPlayerReady');
              },
            ),
          )
          // : Container(
          //     height: 300,
          //     width: double.infinity,
          //     color: Colors.grey[200],
          //   ),
        ],
      ),
    );
  }
}
