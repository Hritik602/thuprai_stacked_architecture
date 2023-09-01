import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/views/home/service/home_service.dart';
import 'package:thuprai_stacked_app/views/sign_up/service/auth_service.dart';

final GetIt locator = GetIt.instance;

class LocatorInjector {
  static Future<void> setUpLocator() async {
    locator.registerLazySingleton(() => NavigationService());

    locator.registerLazySingleton(() => DialogService());

    locator.registerLazySingleton(() => SnackbarService());

    locator.registerLazySingleton(() => AuthService());
    locator.registerLazySingleton(() => HomeService());
  }
}
