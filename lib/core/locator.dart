import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final GetIt locator = GetIt.instance;

class LocatorInjector {
  static Future<void> setUpLocator() async {
    locator.registerLazySingleton(() => NavigationService());

    locator.registerLazySingleton(() => DialogService());

    locator.registerLazySingleton(() => SnackbarService());
  }
}
