import 'package:flutter/material.dart';
//
import 'package:quran_va_tajvid/logic/services/api_services.dart';
import 'package:quran_va_tajvid/model/videolist_model.dart';
import 'package:quran_va_tajvid/presentation/screens/player_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

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

  @override
  void initState() {
    super.initState();
    _videosList = VideosList();
    _videosList!.videos = [];
    _loadingVideos();
  }

  _loadingVideos() async {
    VideosList tempVideosList = await ApiServices.getVideosList(
        playListId: widget.playListId, pageToken: '', maxResults: 50);
    if (tempVideosList.videos != null) {
      _videosList?.videos?.addAll(tempVideosList.videos!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.appBarTitle),
      ),
      body: FutureBuilder(
          future: _loadingVideos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 7),
                  _videosList!.videos!.isNotEmpty
                      ? Expanded(
                          child: ListView.builder(
                              itemCount: _videosList!.videos!.length,
                              itemBuilder: (context, index) {
                                VideoItem videoItem =
                                    _videosList!.videos![index];
                                return videoItem.video?.thumbnails
                                            ?.thumbnailsDefault?.url !=
                                        null
                                    ? GestureDetector(
                                        onTap: () {
                                          final _selectedVideoId = _videosList!
                                              .videos![index]
                                              .video!
                                              .resourceId!
                                              .videoId!;
                                          Get.off(() => PlayerScreen(
                                                appBarTitle: widget.appBarTitle,
                                                selectedVideoId:
                                                    _selectedVideoId,
                                                videoLists: _videosList!,
                                                scrollIndex: index,
                                              ));
                                        },
                                        child: Container(
                                          height: 80,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey[400]!,
                                                  blurRadius: 10,
                                                  offset: const Offset(0.4, 0),
                                                )
                                              ]),
                                          margin:
                                              const EdgeInsets.only(bottom: 5),
                                          child: Row(
                                            children: [
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                height: 80,
                                                width: 120,
                                                child: CachedNetworkImage(
                                                  imageUrl: videoItem
                                                      .video!
                                                      .thumbnails!
                                                      .thumbnailsDefault!
                                                      .url!,
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Flexible(
                                                child: Text(
                                                  videoItem.video!.title!,
                                                  maxLines: 2,
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                            ],
                                          ),
                                        ),
                                      )
                                    : SizedBox();
                              }),
                        )
                      : Center(
                          child: Text(
                              'Youtubedagi xatolik sabab videolar mavjud emas'),
                        )
                ],
              );
            } else {
              return Text('Xatolik!');
            }
          }),
    );
  }
}
