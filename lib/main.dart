import 'package:doe_vida_app/config/injector.dart';
import 'package:doe_vida_app/ui/pages/heartbeat_splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  autoInjector.commit();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(HeartbeatSplashScreen());
  });
}
