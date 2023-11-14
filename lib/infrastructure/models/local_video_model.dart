
import 'package:app_toktik/domain/entities/video_post.dart';

class LocalVideoPostModel {
    String name;
    String videoUrl;
    int likes;
    int views;

    LocalVideoPostModel({
        required this.name,
        required this.videoUrl,
        this.likes = 0,
        this.views = 0,
    });

    factory LocalVideoPostModel.fromJson(Map<String, dynamic> json) => LocalVideoPostModel(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"] ?? 0,
        views: json["views"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
    };  

    VideoPost toVideoPostEntity() {
      return VideoPost(
        caption: name,
        url: videoUrl,
        likes: likes,
        views: views,
      );
    }
}
