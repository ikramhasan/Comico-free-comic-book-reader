import 'package:comic_reader/src/comic/presentation/app.dart';
import 'package:comic_reader/src/settings/infrastructure/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  final documentsDir = await getApplicationDocumentsDirectory();
  Hive.init(documentsDir.path);
  await Hive.openBox(settingsBoxKey);
  runApp(const App());
}
