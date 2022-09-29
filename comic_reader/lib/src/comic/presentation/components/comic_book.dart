import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/comic_details/comic_details_page.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:comic_reader/src/core/presentation/components/image_viewer_with_progress.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';

class ComicBook extends StatelessWidget {
  const ComicBook({
    Key? key,
    required this.comic,
  }) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ComicCubit>().loadComicDetails(comic);
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => ComicDetailsPage(comic: comic),
          ),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: comic.image.isEmpty
                    ? SizedBox(
                        height: comicBookItemHeight,
                        width: comicBookItemWidth,
                        child: Container(
                          color: Colors.grey[700],
                          child: const Center(
                            child: Icon(Ionicons.alert_circle_outline),
                          ),
                        ),
                      )
                    : Hero(
                        tag: comic.image,
                        child: ImageViewerWithProgress(
                          url: comic.image,
                          height: comicBookItemHeight,
                          width: comicBookItemWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              Positioned(
                left: 3,
                child: Container(
                  height: comicBookItemHeight,
                  width: 8,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.black38,
                        Colors.transparent,
                      ],
                      stops: [0.1, 0.5, 0.9],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: comicBookItemWidth,
            child: Text(comic.title),
          ),
        ],
      ),
    );
  }
}
