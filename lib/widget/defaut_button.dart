import 'package:flutter/material.dart';
import 'package:shoping_app/screens/singin/sign_in_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  final onPress;

  const DefaultButton({Key key, this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56),
      width: double.infinity,
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: kPrimaryColor,
          onPressed: onPress,
          child: Text(
            'Continue',
            style: TextStyle(
                color: Colors.white,
                fontSize: getProportionateScreenHeight(18)),
          )),
    );
  }
}
