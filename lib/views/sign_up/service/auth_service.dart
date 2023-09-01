import 'package:thuprai_stacked_app/network/api_error.dart';
import 'package:thuprai_stacked_app/network/network_common.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_in_response.dart';
import 'package:thuprai_stacked_app/views/sign_up/model/sign_up_request.dart';

class AuthService {
  static const String _signUpEndpoint = "/api/signup/";
  static const String _signInEndpoint = "/api/login/";

  Future<SignInResponse> signUpUser(SignUpRequest signUpRequest) async {
    try {
      var res = await NetworkCommon.dio
          .post(_signUpEndpoint, data: signUpRequest.toMap());
      return SignInResponse.fromJson(res.data);
    } catch (e) {
      return SignInResponse.withDioException(ApiError.fromDioError(e));
    }
  }
}
