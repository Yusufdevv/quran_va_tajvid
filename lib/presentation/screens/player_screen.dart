import 'package:flutter/material.dart';
//
import 'package:quran_va_tajvid/model/videolist_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayerScreen extends StatefulWidget {
  final String appBarTitle;
  final String selectedVideoId;
  final int scrollIndex;
  final VideosList videoLists;

  const PlayerScreen(
      {required this.appBarTitle,
      required this.selectedVideoId,
      required this.videoLists,
      required this.scrollIndex,
      Key? key})
      : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  int? _selectedIndex;
  String? videoId;
  late final YoutubePlayerController _controller;
  final itemController = ItemScrollController();

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      flags: const YoutubePlayerFlags(),
      initialVideoId: widget.selectedVideoId,
    );
    _selectedIndex = widget.scrollIndex;
    WidgetsBinding.instance
        .addPostFrameCallback((_) => scrollToIndex(widget.scrollIndex));
  }

  void scrollToIndex(int index) => itemController.jumpTo(index: index);

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
      body: YoutubePlayerBuilder(
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
                player,
                Container(
                  height: 10,
                  width: double.infinity,
                  color: Colors.white,
                ),
                Expanded(
                  child: ScrollablePositionedList.builder(
                      itemScrollController: itemController,
                      itemCount: widget.videoLists.videos!.length,
                      itemBuilder: (context, index) {
                        VideoItem videoItem = widget.videoLists.videos![index];
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                              videoId = widget
                                  .videoLists
                                  .videos![_selectedIndex!]
                                  .video!
                                  .resourceId!
                                  .videoId!;
                              _controller.load(videoId!);
                            });
                          },
                          child: Container(
                            height: 80,
                            margin: const EdgeInsets.only(bottom: 5),
                            decoration: BoxDecoration(
                                color: _selectedIndex == index
                                    ? Theme.of(context).primaryColor
                                    : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[400]!,
                                    blurRadius: 10,
                                    offset: const Offset(0.4, 0),
                                  )
                                ]),
                            child: Row(
                              children: [
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 80,
                                  width: 120,
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: videoItem.video!.thumbnails!
                                        .thumbnailsDefault!.url!,
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Flexible(
                                  child: Text(
                                    videoItem.video!.title!,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: _selectedIndex == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                ),
                                const SizedBox(width: 10),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            );
          }),
    );
  }
}
