
import 'package:app_toktik/domain/datasources/video_post_datasource.dart';
import 'package:app_toktik/domain/entities/video_post.dart';
import 'package:app_toktik/infrastructure/models/local_video_model.dart';
import 'package:app_toktik/shared/data/local_video_post.dart';

class LocalVideoDataSourceImpl implements VideoPostDataSource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final newVideos = videoPosts
        .map((video) => LocalVideoPostModel.fromJson(video).toVideoPostEntity())
        .toList();

    return newVideos;
  }

}
