import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget? _) {
        return Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text('Home View'),
          ),
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
