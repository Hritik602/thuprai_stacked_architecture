import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/views/book_detail_page/model/book_detail_model.dart';
import 'package:thuprai_stacked_app/views/book_detail_page/service/book_details_service.dart';

class BookDetailPageViewModel extends BaseViewModel {
  final _booksDetailService = BookDetailsService();
  Future<BookDetailModel> fetchBookDetails(String bookSlug) async {
    return await _booksDetailService.fetchBookDetail(bookSlug);
  }
}
