import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  CacheService._();

  static const String _tokenKey = "TokenKey";
  static const String _userLoginResponseKey = "LoginResponseKey";
  static const String _isUserLogin = "IsAuthenticate";
  static final CacheService _instance = CacheService._();
  factory CacheService() {
    return _instance;
  }
  static SharedPreferences? pref;
  static saveToken(String token) async {
    if (token.isEmpty) return;
    pref = await SharedPreferences.getInstance();
    pref?.setString(_tokenKey, token);
  }

  static getToken() async {
    pref = await SharedPreferences.getInstance();
    return pref?.getString(_tokenKey);
  }

  static isUserLogin() async {
    String? token = await getToken();
    if (token != null && token.isNotEmpty) {
      return true;
    }
    return false;
  }

  static clearAllPrefs() {
    pref?.clear();
  }
}
