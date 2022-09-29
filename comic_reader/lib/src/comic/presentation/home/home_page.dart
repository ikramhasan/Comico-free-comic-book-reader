import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/components/comic_grid_list.dart';
import 'package:comic_reader/src/comic/presentation/styles/spacing.dart';
import 'package:comic_reader/src/core/presentation/components/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Container(),
          ),
          const SliverToBoxAdapter(child: verticalSpacing16),
          SliverToBoxAdapter(
            child: BlocBuilder<ComicCubit, ComicState>(
              builder: (context, state) {
                if (state.comicsLoading) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height - 100,
                    width: MediaQuery.of(context).size.width,
                    child: const LoadingWidget(),
                  );
                } else if (state.comics.isNotEmpty) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ComicGridList(comics: state.comics),
                  );
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
