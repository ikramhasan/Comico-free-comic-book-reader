import 'package:comic_reader/src/comic/application/comic_cubit.dart';
import 'package:comic_reader/src/comic/application/search_comic/search_comic_bloc.dart';
import 'package:comic_reader/src/comic/presentation/constants/app_contants.dart';
import 'package:comic_reader/src/comic/presentation/desktop_page.dart';
import 'package:comic_reader/src/comic/presentation/tab_page.dart';
import 'package:comic_reader/src/settings/application/cubit/settings_cubit.dart';
import 'package:comic_reader/src/settings/infrastructure/settings_repository.dart';
import 'package:comic_repository/comic_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ComicRepository>(
          create: (context) => ComicRepository(),
        ),
        RepositoryProvider<SettingsRepository>(
          create: (context) => SettingsRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ComicCubit>(
            create: (context) => ComicCubit(context.read<ComicRepository>()),
          ),
          BlocProvider<SearchComicBloc>(
            create: (context) =>
                SearchComicBloc(context.read<ComicRepository>()),
          ),
          BlocProvider<SettingsCubit>(
            create: (context) =>
                SettingsCubit(context.read<SettingsRepository>()),
          ),
        ],
        child: MaterialApp(
          title: 'Comic Reader',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xFF000000),
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(
              backgroundColor: const Color(0xFF192841),
              elevation: 0,
              titleTextStyle: GoogleFonts.bangers(
                fontSize: 23,
                letterSpacing: 2,
              ),
            ),
            colorScheme: const ColorScheme.dark(
              primary: Color(0xFF192841),
            ),
            fontFamily: GoogleFonts.antonio().fontFamily,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Colors.white,
              backgroundColor: Color(0xFF192841),
            ),
            navigationRailTheme: NavigationRailThemeData(
              backgroundColor: const Color(0xFF192841),
              selectedIconTheme: const IconThemeData(color: Colors.white),
              selectedLabelTextStyle: GoogleFonts.antonio(color: Colors.white),
            ),
          ),
          home: const ResponsiveWidget(),
        ),
      ),
    );
  }
}

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width > tabletWidth ? const DesktopPage() : const TabPage();
  }
}
