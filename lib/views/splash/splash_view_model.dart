import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';

class SplashViewModel extends BaseViewModel {
  //Navigate to sign up screen
  void navigate() {
    Timer(const Duration(seconds: 2), () {
      locator<NavigationService>().replaceWith(signUpViewRoute);
    });
  }
}
