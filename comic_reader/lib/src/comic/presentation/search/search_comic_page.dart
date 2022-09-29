import 'package:comic_reader/src/comic/application/search_comic/search_comic_bloc.dart';
import 'package:comic_reader/src/comic/domain/failure.dart';
import 'package:comic_reader/src/comic/presentation/components/comic_grid_list.dart';
import 'package:comic_reader/src/comic/presentation/styles/spacing.dart';
import 'package:comic_reader/src/core/presentation/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchComicPage extends StatelessWidget {
  const SearchComicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchBloc = context.read<SearchComicBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Comic'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            verticalSpacing16,
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
                hintText: 'eg. batman',
              ),
              onChanged: (value) {
                searchBloc.add(SearchComicEvent.search(value));
              },
            ),
            verticalSpacing16,
            Expanded(
              child: BlocConsumer<SearchComicBloc, SearchComicState>(
                listener: (context, state) {
                  if (state.failure != Failure.none()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          state.failure.message,
                        ),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state.loading) {
                    return const LoadingWidget();
                  } else if (state.comics.isNotEmpty) {
                    return ComicGridList(comics: state.comics);
                  }
                  return Container();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
