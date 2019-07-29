import 'package:flutter/material.dart';
import 'constants.dart';
class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardChild,this.cardColor, this.shadowOffset, this .onPress});
  final Widget cardChild;
  final Color cardColor;
  final Offset shadowOffset;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: kBottomContainerColor,
              offset: shadowOffset,
              blurRadius: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
