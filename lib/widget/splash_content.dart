import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;

  const SplashContent({Key key, this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Spacer(),
          Text(
            'TOKYO',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor),
          ),
          Text(text),
          Spacer(
            flex: 2,
          ),
          Image.asset(
            image,
            width: getProportionateScreenWidth(235),
            height: getProportionateScreenHeight(265),
          )
        ],
      ),
    );
  }
}
