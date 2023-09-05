import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';
import 'package:thuprai_stacked_app/utils/cache_service.dart';

class SplashViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  //Navigate to sign up screen
  void navigate() {
    Timer(const Duration(seconds: 2), () async {
      bool isAuth = await CacheService.isUserLogin();

      if (isAuth) {
        _navigationService.replaceWith(homeViewRoute);
      } else {
        _navigationService.replaceWith(loginViewRoute);
      }
    });
  }
}
