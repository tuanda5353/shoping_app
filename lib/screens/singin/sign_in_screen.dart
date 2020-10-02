import 'package:flutter/material.dart';
import 'package:shoping_app/screens/singin/component/body.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = 'sign_in_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text(
          'Sign in',
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
