import 'package:flutter/material.dart';

class reusable_card extends StatelessWidget {
  reusable_card({required this.colour, this.ReusableCardChild, this.onPress});
  // reusable_card(@required this.colour) ;
  final Color colour;
  final Widget? ReusableCardChild;
  final VoidCallback? onPress;
  //final void Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: ReusableCardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
