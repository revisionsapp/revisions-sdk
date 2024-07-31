import 'dart:convert';

import 'package:http/http.dart';
import 'package:revisions/src/data/post_item.dart';
import 'package:revisions/src/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RevisionsClient {
  final Uri _baseUri;
  final Client _client = Client();
  final WuidGenerator _wuidGenerator = SharedPrefsWuidGenerator(
    sharedPrefsProvider: () => SharedPreferences.getInstance(),
  );

  RevisionsClient({required String domain})
      : _baseUri = Uri(scheme: 'https', host: domain);

  Future<List<PostItem>> getPosts() async {
    final response =
        await _client.get(_baseUri.replace(path: '/api/feed'), headers: {
      'device-id': await _wuidGenerator.appUsageId(),
    });
    if (response.statusCode != 200) {
      throw Exception('Failed to load posts');
    }
    final json = jsonDecode(response.body);
    final posts =
        json['feed']?.map<PostItem>((e) => PostItem.fromJson(e)).toList() ?? [];
    return posts;
  }
}
