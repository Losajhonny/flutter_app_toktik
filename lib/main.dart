import 'package:app_toktik/config/theme/app_theme.dart';
import 'package:app_toktik/infrastructure/datasources/local_video_datasources_impl.dart';
import 'package:app_toktik/infrastructure/repositories/video_post_repository_impl.dart';
import 'package:app_toktik/presentation/providers/discover_provider.dart';
import 'package:app_toktik/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(
      videosDataSource: LocalVideoDataSourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DiscoverProvider(
            videoPostRepository: videoPostRepository,
          )..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: "TokTik",
        home: const DiscoverScreen(),
      ),
    );
  }
}
