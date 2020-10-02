import 'package:flutter/material.dart';

import '../constants.dart';

class DotWidget extends StatelessWidget {
  final bool isSelected;

  DotWidget(this.isSelected);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 4),
      width: isSelected ? 15 : 6,
      height: 6,
      decoration: BoxDecoration(
          color: isSelected ? kPrimaryColor : Color(0xFFFD8D8D8),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
