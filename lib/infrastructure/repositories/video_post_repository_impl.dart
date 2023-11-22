
import 'package:app_toktik/domain/datasources/video_post_datasource.dart';
import 'package:app_toktik/domain/entities/video_post.dart';
import 'package:app_toktik/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrandingVideosByPage(int page) {
    return videosDataSource.getTrandingVideosByPage(page);
  }

}