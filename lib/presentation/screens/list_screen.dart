// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:quran_va_tajvid/model/videe_item.dart';
// import 'package:quran_va_tajvid/presentation/screens/video_screen.dart';

// class ListScreen extends StatefulWidget {
//   final String appBarTitle;
//   final String collection;
//   final String doc;
//   const ListScreen(
//       {required this.appBarTitle,
//       required this.collection,
//       required this.doc,
//       Key? key})
//       : super(key: key);

//   @override
//   State<ListScreen> createState() => _ListScreenState();
// }

// class _ListScreenState extends State<ListScreen> {
//   @override
//   Widget build(BuildContext context) {
//     Future<VideosList>? readVideos() async {
//       final docVideos = await FirebaseFirestore.instance
//           .collection(widget.collection)
//           .doc(widget.doc) as List;
//       print(docVideos);
//       // final snapshot = await docVideos;
//       // print(docVideos);

//       return VideosList.fromJson(docVideos);
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.appBarTitle),
//       ),
//       body: FutureBuilder<VideosList>(
//         future: readVideos(),
//         builder: (context, snapshot) {
//           print(snapshot.data);
//           if (snapshot.hasError) {
//             print(snapshot.error);

//             return Center(child: Text("${snapshot.error}"));
//           }
//           if (!snapshot.hasData) {
//             return const Text("Document does not exist");
//           }
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: Text('Yuklanayapti'));
//           }
//           if (snapshot.connectionState == ConnectionState.done) {
//             final videosList = snapshot.data!.videosList;
//             return ListView.builder(
//                 padding: const EdgeInsets.symmetric(vertical: 8),
//                 itemCount: videosList.length,
//                 itemBuilder: (context, index) {
//                   var itemVideo = videosList[index];
//                   return GestureDetector(
//                     onTap: (() => Get.to(() => VideoScreen(
//                           itemVideo: itemVideo,
//                         ))),
//                     child: Container(
//                       height: 100,
//                       margin: const EdgeInsets.symmetric(
//                           horizontal: 10, vertical: 5),
//                       child: Row(
//                         children: [
//                           SizedBox(
//                             height: 100,
//                             width: 120,
//                             child: CachedNetworkImage(
//                               imageUrl: itemVideo.videoImageurl,
//                             ),
//                           ),
//                           const SizedBox(width: 20),
//                           Flexible(
//                               child: Text(
//                             itemVideo.videoTitle,
//                             style: const TextStyle(
//                                 fontSize: 20, fontWeight: FontWeight.w500),
//                           )),
//                           const SizedBox(width: 20),
//                         ],
//                       ),
//                     ),
//                   );
//                 });
//           }
//           return const Center(
//             child: Text('Xatolik'),
//           );
//         },
//       ),
//     );
//   }
// }

// // ? add function to firestore 
// // ? final docVideo = FirebaseFirestore.instance
// // ?                     .collection(widget.collection)
// // ?                     .doc(widget.doc);
// // ?                 List<Map<String, dynamic>> videosList = [];
// // ?                 for (var i = 0; i < _videosList!.videos!.length; i++) {
// // ?                  VideoItem videoItem = _videosList!.videos![i];
// // ?                   final json = {
// // ?                     'videoImageUrl':
// // ?                         'https://i.ytimg.com/vi/${videoItem.video!.resourceId!.videoId!}/default.jpg',
// // ?                     'videoTitle': videoItem.video!.title!,
// // ?                     'videoId': videoItem.video!.resourceId!.videoId!,
// // ?                  };
// // ?                   videosList.add(json);
// // ?                }
// // ?                 docVideo.set({'videosList': videosList});
