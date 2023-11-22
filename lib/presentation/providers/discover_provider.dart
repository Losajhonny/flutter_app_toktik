import 'package:app_toktik/domain/entities/video_post.dart';
import 'package:app_toktik/domain/repositories/video_post_repository.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  List<VideoPost> videoList = [];
  bool _initialLoding = true;
  final VideoPostRepository videoPostRepository;

  DiscoverProvider({required this.videoPostRepository});

  bool get initialLoading => _initialLoding;

  void loadNextPage() async {
    final newVideos = await videoPostRepository.getTrandingVideosByPage(1);
    videoList.addAll(newVideos);
    _initialLoding = false;
    notifyListeners();
  }
}
