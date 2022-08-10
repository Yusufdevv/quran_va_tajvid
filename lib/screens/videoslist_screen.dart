import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosListScreen extends StatefulWidget {
  final Image? image;
  const VideosListScreen(String listImag, {this.image, Key? key})
      : super(key: key);

  @override
  State<VideosListScreen> createState() => _VideosListScreenState();
}

class _VideosListScreenState extends State<VideosListScreen> {
  late YoutubePlayerController controller;

  List<String> urlList = [
    'https://www.youtube.com/watch?v=S3EqVLWg6Tg&list=PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl&index=1',
    'https://www.youtube.com/watch?v=41XvtCJjhDw&list=PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl&index=2',
    'https://www.youtube.com/watch?v=5irkuZtUQGg&list=PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl&index=3',
    'https://www.youtube.com/watch?v=EM-M7WbqJhw&list=PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl&index=4',
    'https://www.youtube.com/watch?v=hOEGbH97afs&list=PLi7SB6MZij7eFSwn85FDjyD4V1XVcuSWl&index=5',
  ];

  @override
  void initState() {
    super.initState();

    // const url = 'https://www.youtube.com/watch?v=41XvtCJjhDw&t=901s';

    // controller = YoutubePlayerController(
    //   initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    // );
  }

  // @override
  // void deactivate() {
  //   controller.pause();
  //   super.deactivate();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.all(8),
              height: 200,
              width: double.infinity,
              child: YoutubePlayer(
                controller: YoutubePlayerController(
                    flags: const YoutubePlayerFlags(
                      autoPlay: false,
                    ),
                    initialVideoId: YoutubePlayer.convertUrlToId(urlList[i])!),
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.black,
                progressColors: const ProgressBarColors(
                    handleColor: Colors.red, playedColor: Colors.red),
              ),
            );
          }),
    );
  }
}
