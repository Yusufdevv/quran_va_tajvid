import 'package:flutter/material.dart';
//
import 'package:quran_va_tajvid/logic/services/api_services.dart';
import 'package:quran_va_tajvid/model/videolist_model.dart';
import 'package:quran_va_tajvid/presentation/screens/video_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoListScreen extends StatefulWidget {
  final String playListId;
  final String appBarTitle;
  final int maxResults;

  const VideoListScreen(
      {required this.playListId,
      required this.appBarTitle,
      required this.maxResults,
      Key? key})
      : super(key: key);

  @override
  State<VideoListScreen> createState() => _VideoListScreenState();
}

class _VideoListScreenState extends State<VideoListScreen> {
  VideosList? _videosList;
  bool display = false;
  int? _selectedIndex = 0;
  String? videoId;
  late final YoutubePlayerController _controller = YoutubePlayerController(
    flags: const YoutubePlayerFlags(),
    initialVideoId: videoId!,
  );

  @override
  void initState() {
    super.initState();
    _videosList = VideosList();
    _videosList!.videos = [];
    _loadingVideos();
  }

  _loadingVideos() async {
    VideosList tempVideosList = await ApiServices.getVideosList(
        playListId: widget.playListId,
        pageToken: '',
        maxResults: widget.maxResults);
    _videosList!.videos!.addAll(tempVideosList.videos!);
    setState(() {});
  }

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
      appBar: AppBar(
        title: Text(widget.appBarTitle),
      ),
      body: _videosList != null
          ? YoutubePlayerBuilder(
              player: YoutubePlayer(
                controller: _controller,
                progressIndicatorColor: Colors.black,
                showVideoProgressIndicator: false,
                progressColors: const ProgressBarColors(
                    handleColor: Colors.red, playedColor: Colors.red),
              ),
              builder: (context, player) {
                return Column(
                  children: [
                    if (display) player,
                    // Expanded(
                    //   child: YoutubePlayer(
                    //     controller: _controller,
                    //     progressIndicatorColor: Colors.black,
                    //     showVideoProgressIndicator: false,
                    //     progressColors: const ProgressBarColors(
                    //         handleColor: Colors.red, playedColor: Colors.red),
                    //   ),
                    // ),
                    Expanded(
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          itemCount: _videosList!.videos!.length,
                          itemBuilder: (context, index) {
                            VideoItem videoItem = _videosList!.videos![index];
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  display = true;
                                  _selectedIndex = index;
                                  videoId = _videosList!
                                      .videos![_selectedIndex!]
                                      .video!
                                      .resourceId!
                                      .videoId!;
                                  _controller.load(_videosList!
                                      .videos![_selectedIndex!]
                                      .video!
                                      .resourceId!
                                      .videoId!);
                                });
                                print(_selectedIndex);
                              },
                              child: Container(
                                height: 100,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      height: 100,
                                      width: 120,
                                      child: CachedNetworkImage(
                                        imageUrl: videoItem.video!.thumbnails!
                                            .thumbnailsDefault!.url!,
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Flexible(
                                        child: Text(
                                      videoItem.video!.title!,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )),
                                    const SizedBox(width: 20),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                );
              })
          : const SizedBox(
              child: Center(child: Text('Xatolik')),
            ),
    );
  }
}
