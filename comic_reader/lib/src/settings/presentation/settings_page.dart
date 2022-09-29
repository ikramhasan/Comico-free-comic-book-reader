import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:comic_reader/src/core/infrastructure/url_launcher_service.dart';
import 'package:comic_reader/src/settings/application/cubit/settings_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsCubit = context.read<SettingsCubit>();
    final comicCubit = context.read<ComicCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Container(
        constraints: const BoxConstraints(
          minWidth: 200,
          maxWidth: desktopWidth,
        ),
        child: Column(
          children: [
            ListTile(
              title: const Text('Home Page'),
              trailing: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: context.watch<SettingsCubit>().state.defaultListing,
                  onChanged: (value) {
                    settingsCubit.setDefaultListing(value);
                    if (value == 'popular') {
                      comicCubit.fetchPopularComics();
                    } else {
                      comicCubit.fetchLatestComics();
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      value: 'latest',
                      child: Text('Latest Comics'),
                    ),
                    DropdownMenuItem(
                      value: 'popular',
                      child: Text('Popular Comics'),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 0),
            ListTile(
              title: const Text('Issue List Sorting'),
              trailing: DropdownButtonHideUnderline(
                child: DropdownButton<bool>(
                  value: context.watch<SettingsCubit>().state.latestFirst,
                  onChanged: (value) {
                    settingsCubit.setDefaultIssueSort(value);
                  },
                  items: const [
                    DropdownMenuItem(
                      value: true,
                      child: Text('Latest First'),
                    ),
                    DropdownMenuItem(
                      value: false,
                      child: Text('Oldest First'),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 0),
            ListTile(
              onTap: () {
                openUrl(
                  'https://play.google.com/store/search?q=pub%3AIkram%20Hasan&c=apps',
                );
              },
              title: const Text('More Apps'),
            ),
            const Divider(height: 0),
            ListTile(
              onTap: () {
                openUrl('https://www.ikramhasan.com');
              },
              title: const Text('About'),
            ),
            const Divider(height: 0),
          ],
        ),
      ),
    );
  }
}
