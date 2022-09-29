import 'package:comic_reader/src/comic/presentation/components/comic_book.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ComicGridList extends StatelessWidget {
  const ComicGridList({
    Key? key,
    required this.comics,
  }) : super(key: key);

  final List<Comic> comics;

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridList(
      desiredItemWidth: comicBookItemWidth,
      shrinkWrap: true,
      minSpacing: 8,
      children: comics
          .map(
            (comic) => ComicBook(comic: comic),
          )
          .toList(),
    );
  }
}
