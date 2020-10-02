import 'package:flutter/material.dart';
import 'package:shoping_app/size_config.dart';

import 'sign_in_form.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sign in with your email and password  \nor continue with social media',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20,),
                SignInForm(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
