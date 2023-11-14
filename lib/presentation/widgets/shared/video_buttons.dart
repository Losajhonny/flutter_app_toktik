import 'package:animate_do/animate_do.dart';
import 'package:app_toktik/config/helper/human_formats.dart';
import 'package:app_toktik/domain/entities/video_post.dart';
import 'package:flutter/material.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.videoPost});

  final VideoPost videoPost;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: videoPost.likes,
          icon: Icons.favorite_border,
          iconColor: Colors.red,
        ),
        const SizedBox(height: 15),
        _CustomIconButton(
          value: videoPost.views,
          icon: Icons.remove_red_eye_outlined,
        ),
        const SizedBox(height: 15),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
            value: 0,
            icon: Icons.play_circle_outline,
          ),
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton({
    required this.value,
    required this.icon,
    iconColor,
  }): color = iconColor ?? Colors.white;

  final int value;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: 40,
          ),
        ),
        if (value > 0)
          Text(HumanFormats.humanReadbleNumber(value.toDouble())),
      ],
    );
  }
}
