// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/views/book_detail_page/model/book_detail_model.dart';

import 'book_detail_page_view_model.dart';

class BookDetailPageView extends StatelessWidget {
  const BookDetailPageView({
    Key? key,
    this.bookSlug,
  }) : super(key: key);
  final String? bookSlug;
  @override
  Widget build(BuildContext context) {
    // String slug = ModalRoute.of(context)!.settings.arguments as String;
    return ViewModelBuilder<BookDetailPageViewModel>.reactive(
      builder:
          (BuildContext context, BookDetailPageViewModel viewModel, Widget? _) {
        return Scaffold(
          appBar: AppBar(),
          body: SafeArea(
              child: FutureBuilder(
                  future: viewModel.fetchBookDetails(bookSlug!),
                  builder: (context, snapShot) {
                    if (!snapShot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    BookDetailModel _booksDetail =
                        snapShot.data as BookDetailModel;

                    return Text(_booksDetail.englishTitle ?? "");
                  })),
        );
      },
      viewModelBuilder: () => BookDetailPageViewModel(),
      onViewModelReady: (val) {
        debugPrint("Init State");
      },
    );
  }
}
