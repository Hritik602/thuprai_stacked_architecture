import 'package:flutter/material.dart';

import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      viewModelBuilder: () => SplashViewModel(),
      builder:
          (BuildContext context, SplashViewModel viewModel, Widget? child) {
        ///For [Test] navigating to another route.
        viewModel.navigate();
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Thuprai",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
