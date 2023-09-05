import 'dart:math';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';
import 'package:thuprai_stacked_app/utils/cache_service.dart';
import 'package:thuprai_stacked_app/views/login/model/sign_in_request.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_in_response.dart';
import 'package:thuprai_stacked_app/views/sign_up/service/auth_service.dart';

class LoginViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _authService = locator<AuthService>();

  Future<void> signInUser(SignInRequest request) async {
    if (request.email?.isEmpty == true && request.password?.isEmpty == true) {
      _dialogService.showDialog(title: "Please fill all the details");
      //  showBasicDialog(tittle: "Error",);
    } else {
      SignInResponse _signResponse = await _authService.signInUser(request);
      if (_signResponse.apiError != null) {
        _dialogService.showDialog(
            title: "Error", description: _signResponse.apiError?.message);
      } else {
        //Save user token in cache and navigate to home page
        await CacheService.saveToken(_signResponse.token ?? "");
        locator<NavigationService>().replaceWith(homeViewRoute);
      }
    }
  }
}
