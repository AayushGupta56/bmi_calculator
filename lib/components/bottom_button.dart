import 'package:flutter/material.dart';
import '../constants.dart';

class Calculate extends StatelessWidget {
  @override
  Calculate({required this.ontap, required this.buttonTitle});
  final String buttonTitle;
  final Function ontap;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap(),
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLabelTextStyle,
          ),
        ),
        margin: EdgeInsets.fromLTRB(15, 5, 15, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPageColour,
        ),
      ),
    );
  }
}
