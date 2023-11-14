import 'package:app_toktik/domain/entities/video_post.dart';
import 'package:app_toktik/presentation/widgets/shared/video_buttons.dart';
import 'package:app_toktik/presentation/widgets/video/full_screen_player.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {
  const VideoScrollableView({super.key, required this.listVideo});

  final List<VideoPost> listVideo;

  @override
  Widget build(BuildContext context) {
    // scroll a pantalla completa
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: listVideo.length,
      itemBuilder: (context, index) {
        final VideoPost videoPost = listVideo[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.url,
              ),  
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(videoPost: videoPost),
            ),
          ],
        );
      },
    );
  }
}