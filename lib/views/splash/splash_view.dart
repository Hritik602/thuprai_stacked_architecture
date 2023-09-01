import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/utils/app_image.dart';
import 'splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.nonReactive(
      builder:
          (BuildContext context, SplashViewModel viewModel, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Splash"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  //  color: Colors.amber,
                  width: 1.sw,
                  height: 0.5.sh,
                  child: SvgPicture.asset(AppImage.thupraiLogo)),
            ],
          ),
        );
      },
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
