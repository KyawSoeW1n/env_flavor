import 'dart:async';

import 'package:env_flavor/flavors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';

FutureOr<void> main() async {
  switch (F.appFlavor) {
    case Flavor.dev:
      await dotenv.load(fileName: ".env_dev");
    case Flavor.mini_dev:
      await dotenv.load(fileName: ".env_mini_dev");
    case Flavor.prod:
      await dotenv.load(fileName: ".env_prod");
    case Flavor.mini_prod:
      await dotenv.load(fileName: ".env_mini_prod");
    default:
      await dotenv.load(fileName: ".env_dev");
  }
  runApp(const App());
}
