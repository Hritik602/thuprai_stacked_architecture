import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_in_response.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_up_request.dart';
import 'package:thuprai_stacked_app/views/sign_up/service/auth_service.dart';

class SignUpViewModel extends BaseViewModel {
  Future<void> signUpUser(SignUpRequest request) async {
    if (request.email?.isEmpty == true &&
        request.name?.isEmpty == true &&
        request.password?.isEmpty == true) {
      locator<DialogService>().showDialog(title: "Please fill all the details");
    } else {
      SignInResponse _signResponse =
          await locator<AuthService>().signUpUser(request);
      if (_signResponse.apiError != null) {
        locator<DialogService>().showDialog(
          title: "Error",
        );
      } else {
        //Save user token in cache and navigate to home page
        locator<NavigationService>().replaceWith(homeViewRoute);
      }
    }
  }
}
