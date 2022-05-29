// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// Project imports:
import 'package:outfiter_fashion_ui/module/application.dart';

class Main {
  static Future start({
    bool enableFirebaseAnalytics = false,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return runApp(const Application());
  }
}
