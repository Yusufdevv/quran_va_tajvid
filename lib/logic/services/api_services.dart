import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:quran_va_tajvid/constants/keys.dart';
import 'package:quran_va_tajvid/model/videolist_model.dart';

class ApiServices {
  static const _baseUrl = 'www.googleapis.com';

  static Future<VideosList> getVideosList(
      {required String playListId,
      required String pageToken,
      required int maxResults}) async {
    Map<String, String> parameters = {
      'part': 'snippet',
      'playlistId': playListId,
      'maxResults': '$maxResults',
      'pageToken': pageToken,
      'key': Constants.API_KEY,
    };

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    Uri uri = Uri.https(
      _baseUrl,
      '/youtube/v3/playlistItems',
      parameters,
    );

    try {
      http.Response response = await http.get(uri, headers: headers);
      // print(response.body);
      VideosList videosList = videosListFromJson(response.body);
      return videosList;
    } catch (e) {
      rethrow;
    }
  }
}
