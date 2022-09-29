import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:comic_reader/src/comic/presentation/home/home_page.dart';
import 'package:comic_reader/src/comic/presentation/search/search_comic_page.dart';
import 'package:comic_reader/src/settings/application/cubit/settings_cubit.dart';
import 'package:comic_reader/src/settings/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';

class DesktopPage extends HookWidget {
  const DesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const SearchComicPage(),
      const SettingsPage(),
    ];

    final currentIndex = useState(0);
    final width = MediaQuery.of(context).size.width;

    final settingsCubit = context.read<SettingsCubit>();
    final comicCubit = context.read<ComicCubit>();

    useEffect(() {
      settingsCubit
        ..loadDefaultListing()
        ..loadDefaultIssueSort();
      if (settingsCubit.state.defaultListing == 'popular') {
        comicCubit.fetchPopularComics();
      } else {
        comicCubit.fetchLatestComics();
      }

      return null;
    }, []);

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            labelType: width > desktopWidth
                ? NavigationRailLabelType.none
                : NavigationRailLabelType.selected,
            extended: width > desktopWidth,
            onDestinationSelected: (value) {
              currentIndex.value = value;
            },
            destinations: [
              NavigationRailDestination(
                icon: Icon(
                  currentIndex.value == 0
                      ? Ionicons.home
                      : Ionicons.home_outline,
                ),
                label: const Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(
                  currentIndex.value == 1
                      ? Ionicons.search
                      : Ionicons.search_outline,
                ),
                label: const Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(
                  currentIndex.value == 2 ? Ionicons.cog : Ionicons.cog_outline,
                ),
                label: const Text('Settings'),
              ),
            ],
            selectedIndex: currentIndex.value,
          ),
          Expanded(child: pages[currentIndex.value]),
        ],
      ),
    );
  }
}
