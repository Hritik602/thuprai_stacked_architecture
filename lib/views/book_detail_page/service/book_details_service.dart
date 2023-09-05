import 'package:thuprai_stacked_app/network/api_error.dart';
import 'package:thuprai_stacked_app/network/network_common.dart';
import 'package:thuprai_stacked_app/views/book_detail_page/model/book_detail_model.dart';

class BookDetailsService {
  static const String _booksDetailEndpoint = "/book/";

  Future<BookDetailModel> fetchBookDetail(String slug) async {
    try {
      var res = await NetworkCommon.dio.get(
        _booksDetailEndpoint,
      );
      return BookDetailModel.fromJson(res.data);
    } catch (e) {
      return BookDetailModel.withDioException(ApiError.fromDioError(e));
    }
  }
}
