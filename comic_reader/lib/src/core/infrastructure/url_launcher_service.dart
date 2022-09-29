import 'dart:developer';

import 'package:url_launcher/url_launcher_string.dart';

void openUrl(String url) {
  try {
    launchUrlString(url);
  } catch (e) {
    log(e.toString());
  }
}
