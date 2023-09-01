import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/widgets/dumb_widgets/input_text_field/input_text_field_widget.dart';
import 'package:thuprai_stacked_app/widgets/dumb_widgets/primary/primary_button_widget.dart';
import 'sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  final TextEditingController _fullNameController = TextEditingController();

  SignUpView({super.key});
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      viewModelBuilder: () => SignUpViewModel(),
      builder: (BuildContext context, SignUpViewModel viewModel, Widget? _) {
        return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
                minimum: EdgeInsets.all(0.02.sw),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Full Name"),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    InputTextFieldWidget(
                      controller: _fullNameController,
                    ),
                    const Text("Email "),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    InputTextFieldWidget(
                      controller: _fullNameController,
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    const Text("Password"),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    InputTextFieldWidget(
                      controller: _fullNameController,
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    PrimaryButtonWidget(
                      buttonTitle: "Sign Up",
                      onTap: () {
                        debugPrint("Clicked");
                      },
                    )
                  ],
                )));
      },
    );
  }
}
