// [ This is an auto generated file ]

import 'package:flutter/material.dart';
import 'package:thuprai_stacked_app/core/router_constants.dart';

import 'package:thuprai_stacked_app/views/login/login_view.dart' as view0;
import 'package:thuprai_stacked_app/views/splash/splash_view.dart' as view1;
import 'package:thuprai_stacked_app/views/sign_up/sign_up_view.dart' as view2;
import 'package:thuprai_stacked_app/views/home/home_view.dart' as view3;

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case loginViewRoute:
        return MaterialPageRoute(builder: (_) => view0.LoginView());
      case splashViewRoute:
        return MaterialPageRoute(builder: (_) => view1.SplashView());
      case signUpViewRoute:
        return MaterialPageRoute(builder: (_) => view2.SignUpView());
      case homeViewRoute:
        return MaterialPageRoute(builder: (_) => view3.HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}