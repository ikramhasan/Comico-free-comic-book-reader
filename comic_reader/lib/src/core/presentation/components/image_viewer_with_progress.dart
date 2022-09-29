import 'package:cached_network_image/cached_network_image.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:flutter/material.dart';

class ImageViewerWithProgress extends StatelessWidget {
  const ImageViewerWithProgress({
    Key? key,
    required this.url,
    this.height,
    this.width,
    this.fit,
  }) : super(key: key);

  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      height: height,
      width: width,
      fit: fit,
      progressIndicatorBuilder: (context, url, progress) {
        return SizedBox(
          height: height ?? comicBookItemHeight,
          width: width ?? comicBookItemWidth,
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                Theme.of(context).colorScheme.primary,
              ),
              value: progress.progress,
            ),
          ),
        );
      },
    );
  }
}
