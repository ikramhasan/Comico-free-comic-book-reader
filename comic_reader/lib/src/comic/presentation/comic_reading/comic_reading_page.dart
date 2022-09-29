import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/comic_reading/comic_issue_pageview.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:comic_reader/src/core/presentation/components/image_viewer_with_progress.dart';
import 'package:comic_reader/src/core/presentation/components/loading_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ComicReadingPage extends StatelessWidget {
  const ComicReadingPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: BlocBuilder<ComicCubit, ComicState>(
        builder: (context, state) {
          if (state.issueLoading) {
            return const LoadingWidget();
          } else if (state.issue.isNotEmpty) {
            return ResponsiveGridList(
              desiredItemWidth: comicBookItemWidth,
              shrinkWrap: true,
              minSpacing: 8,
              children: [
                for (int i = 0; i < state.issue.length; i++)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        CupertinoPageRoute(
                          builder: (context) => ComicIssuePageView(
                            title: title,
                            issues: state.issue,
                            index: i,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        ImageViewerWithProgress(url: state.issue[i].url),
                        Text((i + 1).toString()),
                      ],
                    ),
                  ),
              ],
            );
          }

          return Container();
        },
      ),
    );
  }
}
