import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:thuprai_stacked_app/core/locator.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';
import 'package:thuprai_stacked_app/views/book_detail_page/book_detail_page_view.dart';
import 'package:thuprai_stacked_app/views/home/model/book_model.dart';
import 'package:thuprai_stacked_app/views/home/service/home_service.dart';

class HomeViewModel extends BaseViewModel {
  final _homeService = locator<HomeService>();
  final _navigationService = locator<NavigationService>();

  Future<BookReleaseModel> fetchBooks(int page) async {
    return await _homeService.fetchAllNewReleaseBooks(page);
  }

  void navigateToBookDetailPage(String slug) {
    _navigationService.navigateTo(
      bookDetailPageViewRoute,
      arguments: BookDetailPageView(bookSlug: slug),
    );
  }
}
