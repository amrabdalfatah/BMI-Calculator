import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Widget containerChild;
  final Color color;
  final Function onPress;
  ReusableContainer({@required this.color, @required this.containerChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
          child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: containerChild,
      ),
    );
  }
}
