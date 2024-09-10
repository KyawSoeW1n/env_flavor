enum Flavor {
  dev,
  mini_dev,
  prod,
  mini_prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Env-dev App';
      case Flavor.mini_dev:
        return 'Mini Env-dev App';
      case Flavor.prod:
        return 'Env App';
      case Flavor.mini_prod:
        return 'Mini Env App';
      default:
        return 'title';
    }
  }

}
