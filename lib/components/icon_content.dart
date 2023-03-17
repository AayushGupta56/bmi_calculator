import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class iconContent extends StatelessWidget {
  iconContent({required this.i, required this.gender});
  final IconData i;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(
          // FontAwesomeIcons.mars,
          i,
          size: 80,
          color: Colors.blue,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
