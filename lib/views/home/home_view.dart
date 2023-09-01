import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/views/home/model/book_model.dart';
import 'package:thuprai_stacked_app/widgets/dumb_widgets/book_list_tile/book_list_tile_widget.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (BuildContext context, HomeViewModel viewModel, Widget? _) {
        return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
                minimum: const EdgeInsets.all(10),
                child: FutureBuilder(
                  future: viewModel.fetchBooks(1),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    BookReleaseModel bookReleaseModel =
                        snapshot.data as BookReleaseModel;

                    return ListView.builder(
                        itemCount: bookReleaseModel.results?.length,
                        itemBuilder: (context, index) {
                          return BookListTile(
                            books: bookReleaseModel.results![index],
                          );
                        });
                  },
                )));
      },
    );
  }
}
