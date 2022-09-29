import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/comic_details/components/comic_details_heading.dart';
import 'package:comic_reader/src/comic/presentation/comic_details/components/comic_issues_list.dart';
import 'package:comic_reader/src/core/presentation/components/loading_widget.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComicDetailsPage extends StatelessWidget {
  const ComicDetailsPage({
    Key? key,
    required this.comic,
  }) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(comic.title),
      ),
      body: BlocBuilder<ComicCubit, ComicState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: comic.image.isEmpty
                    ? ComicDetailsHeading(
                        comic: state.comicDetails.copyWith(
                          title: comic.title,
                        ),
                      )
                    : ComicDetailsHeading(
                        comic: state.comicDetails.copyWith(
                          image: comic.image,
                          title: comic.title,
                        ),
                      ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(state.comicDetails.summary ?? 'N/A'),
                ),
              ),
              state.comicDetails.genres != null &&
                      state.comicDetails.genres!.isNotEmpty
                  ? SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 16,
                        ),
                        child: Wrap(
                          children: state.comicDetails.genres!
                              .map(
                                (genre) => Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Text('# ${genre.title}'),
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    )
                  : const SliverToBoxAdapter(child: SizedBox.shrink()),
              SliverToBoxAdapter(child: _getIssueWidget(state)),
            ],
          );
        },
      ),
    );
  }
}

Widget _getIssueWidget(ComicState state) {
  if (state.comicDetailsLoading) {
    return const LoadingWidget();
  } else if (state.comicDetails != Comic.empty()) {
    return ComicIssuesList(
      issues: state.comicDetails.issues!,
      summary: state.comicDetails.summary ?? 'N/A',
    );
  } else {
    return Container();
  }
}
