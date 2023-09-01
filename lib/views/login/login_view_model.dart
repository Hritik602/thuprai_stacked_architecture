import 'dart:math';

import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  int _triviaNumber = 0;

  int get triviaNumber => _triviaNumber;

  void onIncreasedTriviaNumber() {
    _triviaNumber = Random().nextInt(100);
    notifyListeners();
  }
}
