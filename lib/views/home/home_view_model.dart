import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/views/home/model/book_model.dart';
import 'package:thuprai_stacked_app/views/home/service/home_service.dart';

class HomeViewModel extends BaseViewModel {
  Future<BookReleaseModel> fetchBooks(int page) async {
    return await locator<HomeService>().fetchAllNewReleaseBooks(page);
  }
}
