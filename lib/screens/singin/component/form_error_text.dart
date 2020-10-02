import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormErrorText extends StatelessWidget {
  final String error;

  const FormErrorText({Key key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [SvgPicture.asset('assets/icons/Error.svg'), Text(error)],
    );
  }
}
