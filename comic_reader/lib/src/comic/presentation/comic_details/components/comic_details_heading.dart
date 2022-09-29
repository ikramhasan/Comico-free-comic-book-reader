import 'package:comic_reader/src/comic/presentation/comic_details/components/comic_info_widget.dart';
import 'package:comic_reader/src/comic/presentation/styles/spacing.dart';
import 'package:comic_reader/src/core/presentation/components/image_viewer_with_progress.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/material.dart';

class ComicDetailsHeading extends StatelessWidget {
  const ComicDetailsHeading({
    Key? key,
    required this.comic,
  }) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TriangleClipper(),
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              verticalSpacing32,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Hero(
                    tag: comic.image,
                    child: ImageViewerWithProgress(
                      url: comic.image,
                      width: 150,
                      height: 220,
                      fit: BoxFit.fill,
                    ),
                    //  CachedNetworkImage(
                    //   imageUrl: comic.image,
                    //   width: 150,
                    //   height: 220,
                    //   fit: BoxFit.fill,
                    //   errorWidget: (context, url, error) {
                    //     // return Text(error.toString());
                    //     return const Center(
                    //       child: CircularProgressIndicator(
                    //         color: Colors.white,
                    //       ),
                    //     );
                    //   },
                    // ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        width: MediaQuery.of(context).size.width -
                            32 -
                            16 -
                            134 -
                            16,
                        child: Text(
                          comic.title,
                          style: const TextStyle(
                            fontSize: 24,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      verticalSpacing16,
                      ComicInfo(
                        title: 'Author: ',
                        content: comic.author,
                      ),
                      verticalSpacing8,
                      ComicInfo(
                        title: 'Status: ',
                        content: comic.status,
                      ),
                      verticalSpacing8,
                      ComicInfo(
                        title: 'Release Date: ',
                        content: comic.releaseDate,
                      ),
                      verticalSpacing8,
                      ComicInfo(
                        title: 'Views: ',
                        content: comic.views,
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpacing32,
              verticalSpacing16,
            ],
          ),
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width / 2, size.height * 0.94);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
