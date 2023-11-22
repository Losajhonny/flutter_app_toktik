
import 'package:app_toktik/domain/entities/video_post.dart';

abstract class VideoPostRepository {

  Future<List<VideoPost>> getFavoriteVideosByUser(String userId);

  Future<List<VideoPost>> getTrandingVideosByPage(int page);
  
}