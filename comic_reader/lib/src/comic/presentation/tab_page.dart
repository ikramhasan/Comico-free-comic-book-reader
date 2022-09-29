import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/presentation/home/home_page.dart';
import 'package:comic_reader/src/comic/presentation/search/search_comic_page.dart';
import 'package:comic_reader/src/settings/application/cubit/settings_cubit.dart';
import 'package:comic_reader/src/settings/presentation/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ionicons/ionicons.dart';

class TabPage extends HookWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const SearchComicPage(),
      const SettingsPage(),
    ];

    final pageController = usePageController();
    final currentIndex = useState(0);
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
      body: PageView.builder(
        controller: pageController,
        itemCount: pages.length,
        onPageChanged: (value) {
          currentIndex.value = value;
        },
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (value) {
          currentIndex.value = value;
          pageController.animateToPage(
            currentIndex.value,
            duration: const Duration(milliseconds: 200),
            curve: Curves.bounceIn,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex.value == 0 ? Ionicons.home : Ionicons.home_outline,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex.value == 1
                  ? Ionicons.search
                  : Ionicons.search_outline,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              currentIndex.value == 2 ? Ionicons.cog : Ionicons.cog_outline,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
