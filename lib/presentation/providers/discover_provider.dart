import 'package:app_toktik/domain/entities/video_post.dart';
import 'package:app_toktik/infrastructure/models/local_video_model.dart';
import 'package:app_toktik/shared/data/local_video_post.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videoList = [];
  bool _initialLoding = true;

  bool get initialLoading => _initialLoding;

  void loadNextPage() async {
    final newVideos = videoPosts
        .map((video) => LocalVideoPostModel.fromJson(video).toVideoPostEntity())
        .toList();

    videoList.addAll(newVideos);
    _initialLoding = false;
    notifyListeners();
  }
}
