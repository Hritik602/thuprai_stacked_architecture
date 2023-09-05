import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';
import 'package:thuprai_stacked_app/utils/cache_service.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_in_response.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_up_request.dart';
import 'package:thuprai_stacked_app/views/sign_up/service/auth_service.dart';

class SignUpViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _authService = locator<AuthService>();

  Future<void> signUpUser(SignUpRequest request) async {
    if (request.email?.isEmpty == true &&
        request.name?.isEmpty == true &&
        request.password?.isEmpty == true) {
      _dialogService.showDialog(title: "Please fill all the details");
      //  showBasicDialog(tittle: "Error",);
    } else {
      SignInResponse _signResponse = await _authService.signUpUser(request);
      if (_signResponse.apiError != null) {
        showBasicDialog(
            title: "Error", description: _signResponse.apiError?.message);
        //showBasicResponseDialog();
      } else {
        //Save user token in cache and navigate to home page
        await CacheService.saveToken(_signResponse.token ?? "");
        locator<NavigationService>().replaceWith(homeViewRoute);
      }
    }
  }

  Future showBasicDialog({String? title, String? description}) async {
    await _dialogService.showDialog(
      title: title ?? 'The Basic Dialog',
      description: description ??
          'This is the description for the dialog that shows up under the title',
      buttonTitle: 'Ok',
    );
  }

  //basic response dialog
  Future showBasicResponseDialog() async {
    DialogResponse? response = await _dialogService.showDialog(
      title: 'The Basic Dialog',
      description:
          'This is the description for the dialog that shows up under the title',
      buttonTitle: 'This is the main button title',
      dialogPlatform: DialogPlatform.Material,
      cancelTitle: 'Cancel',
    );

    print('DialogResponse: ${response?.confirmed}');
  }
}
