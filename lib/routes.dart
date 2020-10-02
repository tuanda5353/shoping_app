import 'package:flutter/cupertino.dart';
import 'package:shoping_app/screens/login_success/LoginSuccess.dart';
import 'package:shoping_app/screens/singin/sign_in_screen.dart';
import 'package:shoping_app/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
