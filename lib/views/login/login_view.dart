import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:thuprai_stacked_app/views/login/model/sign_in_request.dart';
import 'package:thuprai_stacked_app/widgets/dumb_widgets/input_text_field/input_text_field_widget.dart';
import 'package:thuprai_stacked_app/widgets/dumb_widgets/primary/primary_button_widget.dart';
import 'login_view_model.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (BuildContext context, LoginViewModel viewModel, Widget? child) {
        return Scaffold(
            appBar: AppBar(),
            body: SafeArea(
                minimum: EdgeInsets.all(0.02.sw),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Email "),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    InputTextFieldWidget(
                      controller: _emailController,
                    ),
                    SizedBox(
                      height: 0.01.sh,
                    ),
                    const Text("Password"),
                    InputTextFieldWidget(
                      controller: _passwordController,
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    PrimaryButtonWidget(
                      buttonTitle: "Sign In",
                      onTap: () {
                        viewModel.signInUser(SignInRequest(
                            email: _emailController.text,
                            password: _passwordController.text));
                      },
                    )
                  ],
                )));
      },
    );
  }
}
