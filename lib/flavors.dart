enum Flavor {
  dev,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Env-dev App';
      case Flavor.prod:
        return 'Banana App';
      default:
        return 'title';
    }
  }

}
