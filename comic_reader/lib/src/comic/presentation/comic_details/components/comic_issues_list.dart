import 'dart:math';

import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/comic_reading/comic_reading_page.dart';
import 'package:comic_reader/src/settings/application/cubit/settings_cubit.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';

class ComicIssuesList extends HookWidget {
  const ComicIssuesList({
    Key? key,
    required this.issues,
    required this.summary,
  }) : super(key: key);

  final List<GenericInfo> issues;
  final String summary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Issues',
                  style: TextStyle(fontSize: 18),
                ),
                IconButton(
                  onPressed: () {
                    context.read<SettingsCubit>().setDefaultIssueSort(
                        !context.read<SettingsCubit>().state.latestFirst);
                  },
                  padding: EdgeInsets.zero,
                  icon: Transform.rotate(
                    angle: !context.watch<SettingsCubit>().state.latestFirst
                        ? pi
                        : 0,
                    child: const Icon(Ionicons.filter_outline),
                  ),
                ),
              ],
            ),
          ),
        ),
        ListView.builder(
          primary: false,
          itemCount: issues.length,
          shrinkWrap: true,
          reverse: !context.watch<SettingsCubit>().state.latestFirst,
          itemBuilder: (context, index) {
            final issue = issues[index];

            return ListTile(
              title: Text(issue.title),
              onTap: () {
                context.read<ComicCubit>().loadIssues(issue);
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => ComicReadingPage(
                      title: issue.title,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
